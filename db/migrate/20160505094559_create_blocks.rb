class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.text :body
      t.string :link_path

      t.timestamps null: false
    end
  end
end
