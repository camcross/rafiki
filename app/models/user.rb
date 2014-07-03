class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :achievements
	has_many :badges, through: :achievements 
	#for users that will upload modules
	has_many :modules
	#for users who will enroll in classes
	has_many :enrollments
	has_many :enrolled_modules, through: :enrollments, class_name: "Module"
	
end