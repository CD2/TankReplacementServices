class Enquiry < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true

	enum form_type: [:heating, :oil]

end
