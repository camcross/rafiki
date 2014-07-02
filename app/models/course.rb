class Course < ActiveRecord::Base
	belongs_to :subject
	has_many :modules
	has_one :badge
end