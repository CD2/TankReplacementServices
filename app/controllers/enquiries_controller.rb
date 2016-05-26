class EnquiriesController < ApplicationController

	def new
		@enquiry = Enquiry.new
		@page = Page.find_by(path: 'contact')
	end

	def create
		@enquiry = Enquiry.new(enquiry_params)
		if @enquiry.save
			flash[:success] = 'Enquiry Created'
			redirect_to contact_us_thanks_path
			EnquiryMailer.new_enquiry(@enquiry).deliver_now
		else
			@page = Page.find_by(path: 'contact')
			render :new
		end
	end

	def heating_enquiry
		@enquiry = Enquiry.new
	end

	def tank_enquiry
		@enquiry = Enquiry.new
	end

	private
		def enquiry_params
			params.require(:enquiry).permit(:name, :email, :body, :form_type, :company, :phone, :address, :make_model, :base_type, :base_size, :access, :tank_capacity, :oil_remaining, :postcode, :enquiry_type)
		end

end
