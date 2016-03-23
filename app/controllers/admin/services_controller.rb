class Admin::ServicesController < AdminController

	before_action :set_service, only: [:edit, :update, :destroy]

	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)
		if @service.save
			flash[:success] = 'Service Created'
			redirect_to [:admin, :services]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@service.update_attributes(service_params)
		if @service.save
			flash[:success] = 'Service Updated'
			redirect_to [:admin, :services]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @service.destroy
			flash[:success] = 'Service Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :services]

	end

	private

	def service_params
		params.require(:service).permit(:name, :body, :catchline)
	end

	def set_service
      @service = Service.find(params[:id])
    end

end