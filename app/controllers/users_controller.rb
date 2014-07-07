class UsersController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	
	def index
		@user = User.all
		@enrollments = Enrollment.all
	end	

	def new
		@user = User.new
		@user.points = 0
	end

	def create
		@user = User.new(user_params)
		@user.points = 0
		@user.save
		redirect_to :action => :index
	end
	
	def user_params
		params.require(:user).permit(:name)
	end	
end