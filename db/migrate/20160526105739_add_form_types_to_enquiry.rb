class AddFormTypesToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :form_type, :integer
  end
end
