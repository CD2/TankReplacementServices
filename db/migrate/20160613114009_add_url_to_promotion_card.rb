class AddUrlToPromotionCard < ActiveRecord::Migration
  def change
    add_column :promotion_cards, :url, :string
  end
end
