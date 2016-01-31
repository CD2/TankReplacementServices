module ServicesHelper

	def get_service_promotions
		return Promotions.where('id > ?', 4)
	end

end
