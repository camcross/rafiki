class EnrollmentsController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def index
		@index = Enrollment.all
	end

	def show
		@enrollment = Enrollment.find(params[:id])
	end

	# def new
	# 	@enrollment = Enrollment.new
	# end

	def welcome
		@enrollment = Enrollment.last
	end

	def create
		@enrollment = Enrollment.new
		@enrollment.status = "In Progress"
		@enrollment.enrollee_id = current_user.id
		@enrollment.task_id = 1
		@enrollment.save
		redirect_to :action => :welcome
	end
	
	def enrollment_params
		params.require(:enrollment).permit()
	end	
end