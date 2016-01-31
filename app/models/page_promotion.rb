class PagePromotion < ActiveRecord::Base

	belongs_to :page
	belongs_to :promotion_card

end
