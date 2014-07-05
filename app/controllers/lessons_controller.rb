 class LessonsController < ApplicationController
 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!

  	def index
		@lessons = Lesson.all
	end	

	def new
		@lesson = Lesson.new
	end

	def create
		@lesson = Lesson.new(lesson_params)
		@lesson.save
		redirect_to :action => :index
	end
	
	def lesson_params
		params.require(:lesson).permit(:name)
	end	
end