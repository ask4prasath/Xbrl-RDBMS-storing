require 'test_helper'

class BalLongTermDebtNoncurrentsControllerTest < ActionController::TestCase
  setup do
    @bal_long_term_debt_noncurrent = bal_long_term_debt_noncurrents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_long_term_debt_noncurrents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_long_term_debt_noncurrent" do
    assert_difference('BalLongTermDebtNoncurrent.count') do
      post :create, :bal_long_term_debt_noncurrent => @bal_long_term_debt_noncurrent.attributes
    end

    assert_redirected_to bal_long_term_debt_noncurrent_path(assigns(:bal_long_term_debt_noncurrent))
  end

  test "should show bal_long_term_debt_noncurrent" do
    get :show, :id => @bal_long_term_debt_noncurrent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_long_term_debt_noncurrent.to_param
    assert_response :success
  end

  test "should update bal_long_term_debt_noncurrent" do
    put :update, :id => @bal_long_term_debt_noncurrent.to_param, :bal_long_term_debt_noncurrent => @bal_long_term_debt_noncurrent.attributes
    assert_redirected_to bal_long_term_debt_noncurrent_path(assigns(:bal_long_term_debt_noncurrent))
  end

  test "should destroy bal_long_term_debt_noncurrent" do
    assert_difference('BalLongTermDebtNoncurrent.count', -1) do
      delete :destroy, :id => @bal_long_term_debt_noncurrent.to_param
    end

    assert_redirected_to bal_long_term_debt_noncurrents_path
  end
end
