class Module < ActiveRecord::Base
	#for users who upload content
	belongs_to :user
	#for enrolled users
	has_many :enrollments
	has_many :enrolled_users, through: :enrollments, class_name: "User"
	#for module interaction with other resources
	belongs_to :course
	has_one :guide
	has_one :test

end