require 'test_helper'

class EnquiriesControllerTest < ActionController::TestCase

	setup do
		@enquiry = enquiries(:enquiry_one)
	end

	test 'should get new' do
		assert_routing("/contact_us", :controller => "enquiries", :action => "new")
		get :new
		assert_response :success
	end

	test 'should get thanks' do
		assert_routing('contact_us/thanks', :controller => 'enquiries', :action => 'thanks')
		get :thanks
		assert_response :success
	end

	test 'should post create' do
	    assert_difference('Enquiry.count') do
     		post :create, enquiry: { name: @enquiry.name, email: @enquiry.email, body: @enquiry.body }
     	end
     	assert_response :redirect
	end

end
