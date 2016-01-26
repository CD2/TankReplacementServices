class Service < ActiveRecord::Base
	mount_uploader :banner, ImageUploader

end
