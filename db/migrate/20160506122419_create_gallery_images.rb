class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :image
      t.integer :gallery_id

      t.timestamps null: false
    end
  end
end
