class Course < ActiveRecord::Base
	belongs_to :subject
	has_many :lessons
	has_one :badge
end