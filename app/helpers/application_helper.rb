module ApplicationHelper
	def column_class
		if user_signed_in?
			"col-md-2 col-width-20"
		else
			"col-md-12"
		end
	end
end
