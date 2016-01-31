class Page < ActiveRecord::Base

	mount_uploader :banner, ImageUploader

	has_many :page_promotions
	has_many :promotion_cards, through: :page_promotions

end
