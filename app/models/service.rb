class Service < ActiveRecord::Base
	

  has_many :page_promotions, as: :thing
  has_many :promotion_cards, through: :page_promotions
  
  mount_uploader :banner, ImageUploader

end
