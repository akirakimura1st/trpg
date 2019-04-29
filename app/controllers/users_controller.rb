class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:mypage, :update, :edit]
		def mypage
			@user = User.find(current_user.id)
			@cthulhus = Cthulhu.all
			@cthulhu = @cthulhus.where("user_id = '#{current_user.id}'").order(id: "DESC")
			@cthulhu_count = @cthulhu.count(:id)
			@diarys = Diary.all
			@diary = @diarys.where("user_id = '#{current_user.id}'").order(id: "DESC")
			@diary_count = @diary.count(:id)
		end

		def edit
			@user = User.find(current_user.id)
		end

		def show
			@user = User.find(params[:id])
		end

		def friends
		end

		def index
			@q        = User.search(params[:q])
			@users = @q.result(distinct: true)
		end

		def update
			user = User.find(current_user.id)
			if user.id == current_user.id
				user.update(user_params)
				redirect_to users_mypage_path
			end
		end
		def user_params
			params.require(:user).permit(:user_name, :email, :profile_image, :profile_head_image, :introduction, :voice_chat, :text_chat, have_systems_attributes: [:id, :title, :_destroy])
		end
end