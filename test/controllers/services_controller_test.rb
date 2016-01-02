require 'test_helper'

class ServicesControllerTest < ActionController::TestCase

	setup do
		@service = services(:service_one)
	end

	test "should get index" do
		get :index
		assert_response :success
	end

	test "should get show" do
		get :show, id: @service.id
		assert_response :success
	end

end
