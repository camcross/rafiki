class Mentorship < ActiveRecord::Base
	belongs_to :enrollment 
	has_many :tasks, through: :enrollments

	belongs_to :tutor, :class_name => "User", :foreign_key => :tutor_id

	belongs_to :user

	
end