require 'test_helper'

class GradeHistoriesControllerTest < ActionController::TestCase
  setup do
    @grade_history = grade_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grade_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade_history" do
    assert_difference('GradeHistory.count') do
      post :create, grade_history: {  }
    end

    assert_redirected_to grade_history_path(assigns(:grade_history))
  end

  test "should show grade_history" do
    get :show, id: @grade_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade_history
    assert_response :success
  end

  test "should update grade_history" do
    patch :update, id: @grade_history, grade_history: {  }
    assert_redirected_to grade_history_path(assigns(:grade_history))
  end

  test "should destroy grade_history" do
    assert_difference('GradeHistory.count', -1) do
      delete :destroy, id: @grade_history
    end

    assert_redirected_to grade_histories_path
  end
end
