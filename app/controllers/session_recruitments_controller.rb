class SessionRecruitmentsController < ApplicationController
	def new
		@session = Session.new
	end

	def index
		@q        = Session.search(params[:q])
		@cthulhus = @q.result(distinct: true).order(id: "DESC")
	end

	def edit
		@session = Session.find(params[:id])
		if @session.user_id == current_user.id
		elsif
			redirect_to root_path
		end
	end

	def show
		@session = Session.find(params[:id])
	end

	def create
		session = Session.new(session_params)
		session.user_id = current_user.id
		session.save!
		redirect_to root_path
	end

	def session_params
		params.require(:session).permit(:id, :use_system, :session_name, :game_master, :deadline, :need_persons, :session_type, :session_detail, :start_date, :play_time)
	end
end
