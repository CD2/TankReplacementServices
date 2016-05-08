class Gallery < ActiveRecord::Base

  has_many :gallery_images, dependent: :destroy
  mount_uploader :image, GalleryImageUploader

  validates :name, presence: :true

end
