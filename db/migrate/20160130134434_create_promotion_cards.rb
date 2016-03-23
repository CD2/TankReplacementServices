class CreatePromotionCards < ActiveRecord::Migration
  def change
    create_table :promotion_cards do |t|
      t.string :name
      t.text :body
      t.string :image
      t.string :background, default: '#FCBA26'

      t.timestamps null: false
    end
  end
end
