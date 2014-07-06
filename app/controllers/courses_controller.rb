class CoursesController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def index
		@courses = Course.all
	end	

	def new
		@course = Course.new
	end

	def show
		@course = Course.find(params[:id])

		@enrollment = Enrollment.new
		@enrollment.status = "In Progress"
		@enrollment.enrollee_id = current_user.id
		@enrollment.task_id = params[:id]
		@enrollment.save
		# if @enrollment.save
		# 	flash[:something] = "Enrollment successful!"
	end

	def create
		@course = Course.new(course_params)
		@course.save
		redirect_to :action => :index
	end
	
	def course_params
		params.require(:course).permit(:name, :subject_id)
	end	

	def select
		Course.find(:all, :conditions => ["subject_id" == 1])
	end


end

# Subject has and belongs to many courses
# Course has and belongs to many tasks
# Task belongs to a course, task has a guide, task has a test
# Task has many enrollments
# Tasks has many enrollees through enrollments