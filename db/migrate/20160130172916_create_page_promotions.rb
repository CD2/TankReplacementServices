class CreatePagePromotions < ActiveRecord::Migration
  def change
    create_table :page_promotions do |t|
      t.integer :promotion_card_id
      t.references :thing, polymorphic: true

      t.timestamps null: false
    end
  end
end
