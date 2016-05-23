class AddOrderToPagePromotions < ActiveRecord::Migration
  def change
    add_column :page_promotions, :order, :integer
  end
end
