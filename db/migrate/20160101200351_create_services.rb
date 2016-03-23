class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :catchline
      t.text :body
      t.string :banner


      t.timestamps null: false
    end
  end
end
