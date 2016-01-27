class MenuItem < ActiveRecord::Base

	belongs_to :menu
	default_scope { order('weight ASC') }

end
