class Badge < ActiveRecord::Base
	belongs_to :course
	has_many :achievements
	has_many :users, through: :achievements 
end