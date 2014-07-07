class Enrollment < ActiveRecord::Base
	belongs_to :enrollee, :class_name => "User", :foreign_key => :enrollee_id
	belongs_to :task, :class_name => "Task", :foreign_key => :task_id 
end