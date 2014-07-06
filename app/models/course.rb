class Course < ActiveRecord::Base
	belongs_to :subject
	has_many :tasks
	has_one :badge
end