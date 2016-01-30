class PagePromotion < ActiveRecord::Base

	has_many :Pages
	has_many :PromotionCards

end
