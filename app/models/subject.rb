class Subject < ActiveRecord::Base
	has_many :courses, dependent: :destroy
	has_many :tasks, :through => :courses
end