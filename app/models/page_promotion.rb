class PagePromotion < ActiveRecord::Base

	belongs_to :thing, polymorphic: true
	belongs_to :promotion_card

end
