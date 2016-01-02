require 'test_helper'

class Admin::ProjectsControllerTest < ActionController::TestCase

	setup do
		login
		@project = projects(:project_one)
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
	    assert_difference('Project.count') do
     		post :create, project: { name: @project.name, body: @project.body }
     	end
     	assert_response :redirect
	end

	test 'should get edit' do
		get :edit, id: @project.id
		assert_response :success
	end

	test 'should update' do
		put :update, id: @project.id, project: { name: 'new name' }
		assert_response :redirect
	end

	test 'should destroy' do
	    assert_difference('Project.count', -1) do
     		delete :destroy, id: @project.id
     	end
     	assert_response :redirect
	end

end
