class DiariesController < ApplicationController
	def new
		@diary = Diary.new
	end

	def create
		diary = Diary.new(diary_params)
		diary.user_id = current_user.id
		diary.save!
		redirect_to root_path
	end

	def edit
		@diary = Diary.find(params[:id])
		if @diary.user_id == current_user.id
		elsif
			redirect_to root_path
		end
	end

	def update
		diary = Diary.find(params[:id])
		if diary.user_id == current_user.id
			diary.update(diary_params)
			redirect_to root_path
		end
	end

	def index
		@q        = Diary.search(params[:q])
		@diaries = @q.result(distinct: true)
	end

	def show
		@user = User.find(params[:id])
		@diary = Diary.find(params[:id])
	end

		def diary_params
			params.require(:diary).permit(:user_id, :title, :body, :spiler)
		end
end
