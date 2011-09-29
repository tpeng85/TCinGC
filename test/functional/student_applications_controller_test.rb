require 'test_helper'

class StudentApplicationsControllerTest < ActionController::TestCase
  setup do
    @student_application = student_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_application" do
    assert_difference('StudentApplication.count') do
      post :create, student_application: @student_application.attributes
    end

    assert_redirected_to student_application_path(assigns(:student_application))
  end

  test "should show student_application" do
    get :show, id: @student_application.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_application.to_param
    assert_response :success
  end

  test "should update student_application" do
    put :update, id: @student_application.to_param, student_application: @student_application.attributes
    assert_redirected_to student_application_path(assigns(:student_application))
  end

  test "should destroy student_application" do
    assert_difference('StudentApplication.count', -1) do
      delete :destroy, id: @student_application.to_param
    end

    assert_redirected_to student_applications_path
  end
end
