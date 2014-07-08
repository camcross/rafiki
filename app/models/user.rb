class User < ActiveRecord::Base

  # Include default devise tasks. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :achievements
	has_many :badges, through: :achievements 
	#for users that will upload tasks
	has_many :created_tasks, :source => :tasks, :foreign_key => :author_id
	#for users who will enroll in tasks
	has_many :enrollments
	has_many :tasks, through: :enrollments
end