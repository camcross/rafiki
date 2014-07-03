class GuidesController < ApplicationController
	 #forces the user to log in before doing anything at all
  	wbefore_action :authenticate_user!
	def new
		@guide = Guide.new
	end
end