class MentorshipsController < ApplicationController

	def index
		@mentorships = Mentorship.all
	end

	def show
		# @mentorship = current_user.mentorships.find(params[:id])
		# unless current_user.mentorships.include?(@mentorship)
		@enrollment = Enrollment.find(params[:id])
			@mentorship = Mentorship.new
			@mentorship.status = "Pending"
			@mentorship.user_id = current_user.id
			@mentorship.enrollment_id = params[:id]
			@mentorship.save
		# end
	end

	# def create
	# 	# @mentorships = current_user.mentorships.find(params[:id])
	# 	# unless current_user.mentorships.include?(@mentorship)
	# 		@mentorship = Mentorship.new
	# 		@mentorship.status = "Pending"
	# 		@mentorship.user_id = current_user.id
	# 		@mentorship.task_id = params[:id]
	# 		@mentorship.save
	# end

	def update
		@mentorship = Mentorship.find(params[:id])
		@mentorship.tutor_id = current_user.id
		@mentorship.status = "Complete"
		@mentorship.save
	end

	def tutor_video
	end

	def user_video
	end
end