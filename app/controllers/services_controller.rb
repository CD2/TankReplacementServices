class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

	def show
		@service = Service.find(params[:id])
		@page = Page.first
	end

end
