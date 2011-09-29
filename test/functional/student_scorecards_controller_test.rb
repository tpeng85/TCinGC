require 'test_helper'

class StudentScorecardsControllerTest < ActionController::TestCase
  setup do
    @student_scorecard = student_scorecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_scorecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_scorecard" do
    assert_difference('StudentScorecard.count') do
      post :create, student_scorecard: @student_scorecard.attributes
    end

    assert_redirected_to student_scorecard_path(assigns(:student_scorecard))
  end

  test "should show student_scorecard" do
    get :show, id: @student_scorecard.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_scorecard.to_param
    assert_response :success
  end

  test "should update student_scorecard" do
    put :update, id: @student_scorecard.to_param, student_scorecard: @student_scorecard.attributes
    assert_redirected_to student_scorecard_path(assigns(:student_scorecard))
  end

  test "should destroy student_scorecard" do
    assert_difference('StudentScorecard.count', -1) do
      delete :destroy, id: @student_scorecard.to_param
    end

    assert_redirected_to student_scorecards_path
  end
end
