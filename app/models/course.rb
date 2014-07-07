class Course < ActiveRecord::Base
	belongs_to :subject
	has_many :tasks, dependent: :destroy
	has_one :badge
end