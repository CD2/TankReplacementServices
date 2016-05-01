class AddFieldsToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :company, :string
    add_column :enquiries, :phone, :string
    add_column :enquiries, :address, :text
    add_column :enquiries, :make_model, :string
    add_column :enquiries, :base_type, :string
    add_column :enquiries, :base_size, :string
    add_column :enquiries, :access, :string
    add_column :enquiries, :tank_capacity, :string
    add_column :enquiries, :oil_remaining, :string
    add_column :enquiries, :postcode, :string
    add_column :enquiries, :enquiry_type, :string
  end
end
