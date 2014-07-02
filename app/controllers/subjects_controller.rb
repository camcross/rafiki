class SubjectsController < ApplicationController
	def index
		@subjects = Subject.all
	end	

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)
		@subject.save
		redirect_to :action => :index
	end
	
	def subject_params
		params.require(:subject).permit(:name)
	end	
end