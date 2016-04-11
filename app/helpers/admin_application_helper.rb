module AdminApplicationHelper

	def active_if_current_page page
		controller_name == page.to_s ? 'active': ''
	end

end
