require 'test_helper'

class Admin::TestimonialsControllerTest < ActionController::TestCase

	setup do
		login
		@testimonial = testimonials(:testimonial_one)
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
	    assert_difference('Testimonial.count') do
     		post :create, testimonial: { name: @testimonial.name, body: @testimonial.body }
     	end
     	assert_response :redirect
	end

	test 'should get edit' do
		get :edit, id: @testimonial.id
		assert_response :success
	end

	test 'should update' do
		patch :update, id: @testimonial.id, testimonial: { name: 'new name' }
		assert_response :redirect
	end

	test 'should destroy' do
	    assert_difference('Testimonial.count', -1) do
     		delete :destroy, id: @testimonial.id
     	end
     	assert_response :redirect
	end

end
