 class TasksController < ApplicationController
 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!

  	def index
		@tasks = Task.all
	end	

	def new
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])

		@enrollment = Enrollment.new
		@enrollment.status = "In Progress"
		@enrollment.enrollee_id = current_user.id
		@enrollment.task_id = params[:id]
		@enrollment.save
		# if @enrollment.save
		# 	flash[:something] = "Enrollment successful!"
	end

	def create
		@task = Task.new(task_params)
		@task.save
		redirect_to :action => :index
	end
	
	def task_params
		params.require(:task).permit(:name, :points, :enrollee_id, :author_id, :description, :course_id)
	end	
end