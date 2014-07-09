class MentorshipsController < ApplicationController

	def index
		@mentorships = Mentorship.all
	end

	def show
		# @mentorship = current_user.mentorships.find(params[:id])
		# unless current_user.mentorships.include?(@mentorship)
		# 	@mentorship = Mentorship.new
		# 	@mentorship.status = "In Progress"
		# 	@mentorship.user_id = current_user.id
		# 	@mentorship.task_id = params[:id]
		# 	@mentorship.save
		# end
	end

	def create
		# @mentorships = current_user.mentorships.find(params[:id])
		# unless current_user.mentorships.include?(@mentorship)
			@mentorship = Mentorship.new
			@mentorship.status = "In Progress"
			@mentorship.user_id = current_user.id
			@mentorship.task_id = params[:id]
			@mentorship.save
	end
end