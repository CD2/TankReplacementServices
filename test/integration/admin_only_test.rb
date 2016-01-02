require 'test_helper'

class AdminOnlyTest < ActionDispatch::IntegrationTest

	def setup
		# login
	end

	test 'should redirect if not logged in' do
		get '/admin/enquiries'
		assert_response :redirect
		get '/admin/pages'
		assert_response :redirect
		get '/admin/projects'
		assert_response :redirect
		get '/admin/testimonials'
		assert_response :redirect
		get '/admin/users'
		assert_response :redirect
	end

	test 'should not redirect if logged in' do
		login
		get '/admin/enquiries'
		assert_response :success
		get '/admin/pages'
		assert_response :success
		get '/admin/projects'
		assert_response :success
		get '/admin/testimonials'
		assert_response :success
		get '/admin/users'
		assert_response :success
	end

	test 'log'
end
