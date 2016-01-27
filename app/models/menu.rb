class Menu < ActiveRecord::Base

	has_many :menu_item, dependent: :destroy
	accepts_nested_attributes_for :menu_item, :allow_destroy => true

end
