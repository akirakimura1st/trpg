class CommonController < ApplicationController
	def index
		if user_signed_in?
			@user = User.find(current_user.id)
		else
		end
		@users = User.all.order(id: "DESC")
		@session = Session.all.order(id: "DESC")
		@cthulhu = Cthulhu.all.order(id: "DESC")
		@diary = Diary.all.order(id: "DESC")
		@community = Community.all.order(id: "DESC")
	end
end
