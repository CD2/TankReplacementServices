class GalleryImage < ActiveRecord::Base

  belongs_to :gallery
  mount_uploader :image, GalleryImageUploader

  default_scope -> { order('created_at DESC') }

end
