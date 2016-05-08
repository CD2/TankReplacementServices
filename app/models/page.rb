class Page < ActiveRecord::Base

	mount_uploader :banner, ImageUploader

	has_many :page_promotions, as: :thing
	has_many :promotion_cards, through: :page_promotions

  def selected_promotions= val
    self.page_promotions.destroy_all
    val.each_value do |card_id|
      page_promotions.create!(promotion_card_id: card_id)
    end
  end

end
