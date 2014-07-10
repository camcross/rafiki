class TeachController < ApplicationController

	def index
		@enrollments = current_user.enrollments
		@mentorships = Mentorship.all
		@users = User.all
	end
end