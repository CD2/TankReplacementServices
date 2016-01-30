class PromotionCard < ActiveRecord::Base
	mount_uploader :image, PromotionImageUploader

	belongs_to :Page
	belongs_to :PagePromotion

end
