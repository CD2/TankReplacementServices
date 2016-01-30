class CreatePromotionCards < ActiveRecord::Migration
  def change
    create_table :promotion_cards do |t|
      t.string :title
      t.string :body
      t.string :image
      t.string :background
      t.string :color

      t.timestamps null: false
    end
  end
end
