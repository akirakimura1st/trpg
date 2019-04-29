class AddUsersController < ApplicationController
	def create
		@add_user = AddUser.new(add_user_params)
		@add_user.admin_user_id = current_user.id
		if @add_user.save!
			redirect_back(fallback_location: root_path)
		else
			redirect_back(fallback_location: root_path)
		end

		end

		private
		def add_user_params
			params.require(:add_user).permit(:admin_user_id)
		end
end
