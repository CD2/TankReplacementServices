module MenuHelper

	MENU_LINKS = [:services, :pages, :enquiries, :testimonials, :users]


	def render_menu menu_name, &block
		menu = Menu.find_by(machine_name: menu_name)
		return nil unless menu
		if block
			menu.menu_item.each do |menu_item|
				yield menu_item.name, menu_item.path
			end
			nil
		else
			haml_code = menu.menu_item.inject('') { |ret, link| ret + link_to(link.name, link.path) }.html_safe
			engine = Haml::Engine.new(haml_code)
	    	engine.render
		end
	end
end
