require 'test_helper'

class Admin::PagesControllerTest < ActionController::TestCase

	setup do
		login
		@page = pages(:page_one)
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
	    assert_difference('Page.count') do
     		post :create, page: { name: @page.name, body: @page.body }
     	end
     	assert_response :redirect
	end

	test 'should get edit' do
		get :edit, id: @page.id
		assert_response :success
	end

	test 'should update' do
		put :update, id: @page.id, page: { name: 'new name' }
		assert_response :redirect
	end

	test 'should destroy' do
	    assert_difference('Page.count', -1) do
     		delete :destroy, id: @page.id
     	end
     	assert_response :redirect
	end

end
