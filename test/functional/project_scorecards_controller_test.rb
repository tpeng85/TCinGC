require 'test_helper'

class ProjectScorecardsControllerTest < ActionController::TestCase
  setup do
    @project_scorecard = project_scorecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_scorecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_scorecard" do
    assert_difference('ProjectScorecard.count') do
      post :create, project_scorecard: @project_scorecard.attributes
    end

    assert_redirected_to project_scorecard_path(assigns(:project_scorecard))
  end

  test "should show project_scorecard" do
    get :show, id: @project_scorecard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_scorecard.to_param
    assert_response :success
  end

  test "should update project_scorecard" do
    put :update, id: @project_scorecard.to_param, project_scorecard: @project_scorecard.attributes
    assert_redirected_to project_scorecard_path(assigns(:project_scorecard))
  end

  test "should destroy project_scorecard" do
    assert_difference('ProjectScorecard.count', -1) do
      delete :destroy, id: @project_scorecard.to_param
    end

    assert_redirected_to project_scorecards_path
  end
end
