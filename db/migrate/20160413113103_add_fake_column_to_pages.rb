class AddFakeColumnToPages < ActiveRecord::Migration
  def change
    add_column :pages, :fake, :boolean, default: false
  end
end
