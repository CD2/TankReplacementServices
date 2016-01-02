require 'test_helper'

class Admin::ServicesControllerTest < ActionController::TestCase

	setup do
		login
		@service = services(:service_one)
	end

	test 'should get index' do
		get :index
		assert_response :success
	end

	test 'should get new' do
		get :new
		assert_response :success
	end

	test 'should create' do
	    assert_difference('Service.count') do
     		post :create, service: { name: @service.name, body: @service.body }
     	end
     	assert_response :redirect
	end

	test 'should get edit' do
		get :edit, id: @service.id
		assert_response :success
	end

	test 'should update' do
		put :update, id: @service.id, service: { name: 'new name' }
		assert_response :redirect
	end

	test 'should destroy' do
	    assert_difference('Service.count', -1) do
     		delete :destroy, id: @service.id
     	end
     	assert_response :redirect
	end

end
