class Gallery < ActiveRecord::Base

  has_many :gallery_images, dependent: :destroy
  mount_uploader :image, GalleryImageUploader

  validates :name, presence: :true

  def preview_thumbs
    gallery_images.shuffle.first(3).collect{|x| x.image}
  end

end
