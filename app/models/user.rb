class User < ActiveRecord::Base
	has_many :achievements
	has_many :badges, through: :achievements 
	#for users that will upload modules
	has_many :modules
	#for users who will enroll in classes
	has_many :enrollments
	has_many :enrolled_modules, through: :enrollments, class_name: "Module"
	
end