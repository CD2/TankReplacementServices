class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|

    	t.belongs_to :menu
    	t.string :name
    	t.string :path
    	t.integer :weight


      t.timestamps null: false
    end
  end
end
