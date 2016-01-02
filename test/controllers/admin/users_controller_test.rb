require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase

	setup do
		login
		@user = users(:user_one)
		@user2 = users(:user_two)
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
	    assert_difference('User.count') do
     		post :create, user: { name: 'Username', email: 'email@test.com', password: 'pass123', password_confirmation: 'pass123' }
     	end
     	assert_response :redirect
	end

	test 'should get edit' do
		get :edit, id: @user.id
		assert_response :success
	end

	test 'should update' do
		post :update, id: @user.id, user: { name: 'new name' }
		assert_response :redirect
	end

	test 'should destroy' do
	    assert_difference('User.count', -1) do
     		delete :destroy, id: @user2.id
     	end
     	assert_response :redirect
	end

end
