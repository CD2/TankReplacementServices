module ApplicationHelper

	def page_title title = ''
		if title.blank?
			'Tank Replacement Services'
		else
			"#{title} | Tank Replacement Services"
		end
	end

end
