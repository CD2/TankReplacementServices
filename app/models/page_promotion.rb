class PagePromotion < ActiveRecord::Base
	default_scope -> { order order: :asc }
	belongs_to :thing, polymorphic: true
	belongs_to :promotion_card

end
