class AddDateToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :date, :datetime
  end
end
