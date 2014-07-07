class TestsController < ApplicationController
	 #forces the user to log in before doing anything at all
  	before_action :authenticate_user!
	def new
		@test = Test.new
	end

	def check
		@count = 0
		@score = 0
		@test = Test.find(params[:task_id])
		@test.questions.each_with_index do |q, i|
			if q.answer == params["question#{i+1}"]
				@score += 1
			end
			@count += 1
		end
		# if @score == @count
		# 	current_user.points += @test.task.points
		# end
	end
end