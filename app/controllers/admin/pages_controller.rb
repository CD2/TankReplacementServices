class Admin::PagesController < AdminController

	before_action :set_page, only: [:edit, :update, :destroy]

	def index
		@pages = Page.where(fake: false)
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			flash[:success] = 'Page Created'
			redirect_to "/#{@page.path}"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@page.update_attributes(page_params)
		if @page.save
			flash[:success] = 'Page Updated'
			redirect_to "/#{@page.path}"
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @page.destroy
			flash[:success] = 'Page Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :pages]

	end

	private

	def page_params
		params.require(:page).permit(:name, :path, :body)
	end

	def set_page
      @page = Page.find(params[:id])
    end

end