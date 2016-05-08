class Admin::GalleryImagesController < AdminController

  before_action :set_gallery
  before_action :set_gallery_image, only: [:destroy]

  def index
    @gallery_images = @gallery.gallery_images
  end

  def create
    @gallery_image = @gallery.gallery_images.new(gallery_image_params)
    if @gallery.save
      flash[:success] = 'Gallery Image Created'
      redirect_to [:admin, @gallery, :gallery_images]
    else
      render 'new'
    end
  end

  def destroy
    if @gallery_image.destroy
      flash[:success] = 'Gallery Image Destroyed'
    else
      flash[:error] = 'Sorry, an error occured'
    end
    redirect_to [:admin, @gallery, :gallery_images]

  end

  private

  def gallery_image_params
    params.require(:gallery_image).permit(:image)
  end

  def set_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end

  def set_gallery_image
    @gallery_image = @gallery.gallery_images.find(params[:id])
  end
end