class Test < ActiveRecord::Base
	belongs_to :task
	has_many :questions
end