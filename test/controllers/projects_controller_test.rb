require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
	
	setup do
		@project = projects(:project_one)
	end

	test "should get index" do
		get :index
		assert_response :success
	end

	test "should get show" do
		get :show, id: @project.id
		assert_response :success
	end
	
end