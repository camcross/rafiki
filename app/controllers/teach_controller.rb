class TeachController < ApplicationController

	def index
		@enrollments = current_user.enrollments
	end
end