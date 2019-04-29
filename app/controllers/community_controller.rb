class CommunityController < ApplicationController
	def new
		@community = Community.new
		@community.add_users.build
	end

	def create
		user = current_user
		community = user.communities.new(community_params)
		community.admin_user_id = current_user.id
		community.save!
		redirect_to community_index_path
	end

	def index
	end

	def show
		@community = Community.find(params[:id])
		@admin_name = User.find(@community.admin_user_id)
		@user = User.all
	end

	def edit
	end

	def community_params
		params.require(:community).permit(:community_title, :community_detail, :community_image, :community_type, :admin_user_id, :add_user_id)
	end

end
