class Admin::GalleriesController < AdminController

	before_action :set_gallery, only: [:edit, :update, :destroy]

	def index
		@gallerys = Gallery.all
	end

	def new
		@gallery = Gallery.new
	end

	def create
		@gallery = Gallery.new(gallery_params)
		if @gallery.save
			flash[:success] = 'Gallery Created'
			redirect_to [:admin, :galleries]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@gallery.update_attributes(gallery_params)
		if @gallery.save
			flash[:success] = 'Gallery Updated'
			redirect_to [:admin, :galleries]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @gallery.destroy
			flash[:success] = 'Gallery Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :galleries]

	end

	private

	def gallery_params
		params.require(:gallery).permit(:name)
	end

	def set_gallery
      @gallery = Gallery.find(params[:id])
    end

end