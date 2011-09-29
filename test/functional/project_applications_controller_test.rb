require 'test_helper'

class ProjectApplicationsControllerTest < ActionController::TestCase
  setup do
    @project_application = project_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_application" do
    assert_difference('ProjectApplication.count') do
      post :create, project_application: @project_application.attributes
    end

    assert_redirected_to project_application_path(assigns(:project_application))
  end

  test "should show project_application" do
    get :show, id: @project_application.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_application.to_param
    assert_response :success
  end

  test "should update project_application" do
    put :update, id: @project_application.to_param, project_application: @project_application.attributes
    assert_redirected_to project_application_path(assigns(:project_application))
  end

  test "should destroy project_application" do
    assert_difference('ProjectApplication.count', -1) do
      delete :destroy, id: @project_application.to_param
    end

    assert_redirected_to project_applications_path
  end
end
