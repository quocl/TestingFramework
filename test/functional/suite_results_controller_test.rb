require 'test_helper'

class SuiteResultsControllerTest < ActionController::TestCase
  setup do
    @suite_result = suite_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suite_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suite_result" do
    assert_difference('SuiteResult.count') do
      post :create, suite_result: { run_id: @suite_result.run_id, status: @suite_result.status, test_suite_id: @suite_result.test_suite_id }
    end

    assert_redirected_to suite_result_path(assigns(:suite_result))
  end

  test "should show suite_result" do
    get :show, id: @suite_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suite_result
    assert_response :success
  end

  test "should update suite_result" do
    put :update, id: @suite_result, suite_result: { run_id: @suite_result.run_id, status: @suite_result.status, test_suite_id: @suite_result.test_suite_id }
    assert_redirected_to suite_result_path(assigns(:suite_result))
  end

  test "should destroy suite_result" do
    assert_difference('SuiteResult.count', -1) do
      delete :destroy, id: @suite_result
    end

    assert_redirected_to suite_results_path
  end
end
