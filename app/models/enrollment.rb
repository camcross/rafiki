class Enrollment < ActiveRecord::Base
	belongs_to :user, :class_name => "User", :foreign_key => :user_id
	belongs_to :task, :class_name => "Task", :foreign_key => :task_id 

	has_one :mentorship
end