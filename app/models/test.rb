class Test < ActiveRecord::Base
	belongs_to :module
	has_many :questions
end