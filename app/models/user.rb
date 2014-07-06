class User < ActiveRecord::Base

  # Include default devise lessons. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :achievements
	has_many :badges, through: :achievements 
	#for users that will upload lessons
	has_many :created_lessons, :source => :lessons, :foreign_key => :author_id
	#for users who will enroll in classes
	has_many :enrollments
	has_many :enrolled_lessons, :source => :lessons, :foreign_key => :enrollee_id 
end