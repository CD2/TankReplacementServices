class CreatePagePromotions < ActiveRecord::Migration
  def change
    create_table :page_promotions do |t|
      t.integer :page_id
      t.integer :promotion_card_id

      t.timestamps null: false
    end
  end
end
