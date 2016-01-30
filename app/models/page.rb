class Page < ActiveRecord::Base

	has_many :page_promotions
	has_many :promotion_cards, through: :page_promotions

end
