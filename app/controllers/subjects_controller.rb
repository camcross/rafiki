class SubjectsController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def index
		@subjects = Subject.all
	end	

	def new
		@subject = Subject.new
	end

	def show
		@subject = Subject.find(params[:id])
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