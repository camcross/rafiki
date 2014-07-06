class Lesson < ActiveRecord::Base
	#for users who upload content
	belongs_to :user
	#for enrolled users
	has_many :enrollments
	has_many :enrolled_users, through: :enrollments, :source => :users
	#for module interaction with other resources
	belongs_to :course
	has_one :guide
	has_one :test
	#for distinguishing between authors and enrollees
	belongs_to :author, :class_name => "User"
	has_many :enrollees, :through => :Enrollments, :class_name => "User"
end