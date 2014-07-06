class Subject < ActiveRecord::Base
	has_many :courses
	has_many :tasks, :through => :courses
end