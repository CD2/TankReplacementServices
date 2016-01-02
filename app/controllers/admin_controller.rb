class AdminController < ApplicationController
	layout 'admin_application'

	before_action :admin_only


	private

		def admin_only
			redirect_to login_path unless logged_in?
		end

	
end