class Admin::TestimonialsController < AdminController

	before_action :set_testimonial, only: [:edit, :update, :destroy]

	def index
		@testimonials = Testimonial.all
	end

	def new
		@testimonial = Testimonial.new
	end

	def create
		@testimonial = Testimonial.new(testimonial_params)
		if @testimonial.save
			flash[:success] = 'Testimonial Created'
			redirect_to [:admin, :testimonials]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@testimonial.update_attributes(testimonial_params)
		if @testimonial.save
			flash[:success] = 'Testimonial Updated'
			redirect_to [:admin, :testimonials]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @testimonial.destroy
			flash[:success] = 'Testimonial Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :testimonials]

	end

	private

	def testimonial_params
		params.require(:testimonial).permit(:name, :body)
	end

	def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

end