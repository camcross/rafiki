class UsersController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	
	def index
		@user = User.all
	end	

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to :action => :index
	end
	
	def user_params
		params.require(:user).permit(:name)
	end	
end