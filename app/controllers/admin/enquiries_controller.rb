class Admin::EnquiriesController < AdminController

	before_action :set_enquiry, only: [:show, :destroy]

	def index
		@enquiries = Enquiry.all
	end

	def show
	end

	def destroy
		if @enquiry.destroy
			flash[:success] = 'enquiry Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :enquiries]

	end

	private

	def enquiry_params
		params.require(:enquiry).permit(:name, :email, :password, :password_confirmation)
	end

	def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

end