module AdminApplicationHelper

	MENU_LINKS = [:projects, :services, :pages, :enquiries, :testimonials, :users]


	def admin_side_menu
		MENU_LINKS.inject('') { |ret, link| ret + link_to(link.to_s.titleize, [:admin, link], class: active_if_current_page(link)) }.html_safe
	end

	def active_if_current_page page
		controller_name == page.to_s ? 'active': ''
	end

end
