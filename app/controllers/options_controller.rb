class OptionsController < ApplicationController
	def new
		@option = Option.new
	end
end