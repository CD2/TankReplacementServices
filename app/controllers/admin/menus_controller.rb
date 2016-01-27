class Admin::MenusController < AdminController

	before_action :set_menu, only: [:edit, :update, :destroy]

	def index
		@menus = Menu.all
	end

	def update
		@menu.update_attributes(menu_params)
		if @menu.save
			flash[:success] = 'Page Updated'
			redirect_to [:admin, :menus]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end
	end

	private

	def menu_params
		params.require(:menu).permit(:menu_item_attributes => [ :id, :path, :name, :weight ])
    end

	def set_menu
      @menu = Menu.find(params[:id])
    end

end