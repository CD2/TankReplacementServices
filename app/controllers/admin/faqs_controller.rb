class Admin::FaqsController < AdminController

	before_action :set_faq, only: [:edit, :update, :destroy]

	def index
		@faqs = Faq.all
	end

	def new
		@faq = Faq.new
	end

	def create
		@faq = Faq.new(faq_params)
		if @faq.save
			flash[:success] = 'Faq Created'
			redirect_to [:admin, :faqs]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@faq.update_attributes(faq_params)
		if @faq.save
			flash[:success] = 'Faq Updated'
			redirect_to [:admin, :faqs]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end
	end

	def destroy
		if @faq.destroy
			flash[:success] = 'Faq Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :faqs]

	end

	private

	def faq_params
		params.require(:faq).permit(:question, :answer)
	end

	def set_faq
      @faq = Faq.find(params[:id])
    end

end

