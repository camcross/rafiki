class GuidesController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def new
		@guide = Guide.new
	end

	def create
		@guide = Guide.new
		@guide.save
		redirect_to :action => :index
	end

	def guide_params
		params.require(:guide).permit()
	end	
end