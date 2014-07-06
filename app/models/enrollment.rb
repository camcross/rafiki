class Enrollment < ActiveRecord::Base
	belongs_to :enrollee, :class_name => "User"
	belongs_to :task, :class_name => "Task", :foreign_key => :task_id 
end