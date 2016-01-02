require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest

	def setup
		login
	end

	test 'invalid user creation infomation' do
		get new_admin_user_path
		assert_no_difference 'User.count' do
			post admin_users_path, user: { 	name: 	"",
										email: 	"invalid@email",
										password: 				"foo",
										password_confirmation: 	"bar",
			}
		end
		assert_template 'admin/users/new'
	end

	test 'valid user creation infomation' do
		get new_admin_user_path
		assert_difference 'User.count', 1 do
			post_via_redirect admin_users_path, user: { 	name: 	"Test User",
											email: 	"valid@email.com",
											password: 				"foo123",
											password_confirmation: 	"foo123",
			}
		end
		assert_template 'admin/users/index'
	end

end
