class BadgesController < ApplicationController
	 #forces the user to log in before doing anything at all
  before_action :authenticate_user!
	def new
		@badge = Badge.new
	end
end