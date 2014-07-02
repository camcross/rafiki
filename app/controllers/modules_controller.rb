class ModulesController < ApplicationController
	def new
		@module = Module.new
	end
end