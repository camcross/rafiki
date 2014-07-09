class TestsController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def new
		@test = Test.new
	end

	def check
		@enrollment = current_user.enrollments.find(params[:task_id])
		@count = 0
		@score = 0
		@test = Test.find(params[:task_id])
		@test.questions.each do |q|
			if q.answer == params["question#{q.id}"]
				@score += 1
			end
			@count += 1
		end
		if @score == @count
			@enrollment.update_attribute(:status, "Complete")
		end
		# if @score == @count
		# 	current_user.points += @test.task.points
		# end
	end
end