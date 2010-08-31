require 'test_helper'

class BalLiabilitiesCurrentsControllerTest < ActionController::TestCase
  setup do
    @bal_liabilities_current = bal_liabilities_currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_liabilities_currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_liabilities_current" do
    assert_difference('BalLiabilitiesCurrent.count') do
      post :create, :bal_liabilities_current => @bal_liabilities_current.attributes
    end

    assert_redirected_to bal_liabilities_current_path(assigns(:bal_liabilities_current))
  end

  test "should show bal_liabilities_current" do
    get :show, :id => @bal_liabilities_current.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_liabilities_current.to_param
    assert_response :success
  end

  test "should update bal_liabilities_current" do
    put :update, :id => @bal_liabilities_current.to_param, :bal_liabilities_current => @bal_liabilities_current.attributes
    assert_redirected_to bal_liabilities_current_path(assigns(:bal_liabilities_current))
  end

  test "should destroy bal_liabilities_current" do
    assert_difference('BalLiabilitiesCurrent.count', -1) do
      delete :destroy, :id => @bal_liabilities_current.to_param
    end

    assert_redirected_to bal_liabilities_currents_path
  end
end
