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

	private
		def enquiry_params
			params.require(:enquiry).permit(:name, :email, :body)
		end

end
