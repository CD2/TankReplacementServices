require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:user_one)
	end

	test 'flash shouldnt persist' do
		get login_path
		assert_template 'sessions/new'
		post login_path, session: {email: '', password: ''}
		assert_template 'sessions/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?
	end 

	test 'login with valid infomation then logout' do
		get login_path
		post login_path, session: {email: @user.email, password: 'pass123'}
		assert is_logged_in?
		follow_redirect!
		get logout_path
		assert_not is_logged_in?
		assert_redirected_to root_url
		get logout_path
		follow_redirect!
		assert_response :success
	end

	test 'login with remembering' do
		login remember_me: '1'
		assert_not_nil cookies['remember_token']
	end

	test 'login without remembering' do
		login remember_me: '0'
		assert_nil cookies['remember_token']
	end
end
