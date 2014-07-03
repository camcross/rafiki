class CoursesController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def index
		@courses = Course.all
	end	

	def new
		@course = Course.new
	end

	# def show
	# 	@course = Course.show(params[:id])
	# end

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