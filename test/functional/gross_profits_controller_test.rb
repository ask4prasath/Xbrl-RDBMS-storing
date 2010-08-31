require 'test_helper'

class GrossProfitsControllerTest < ActionController::TestCase
  setup do
    @gross_profit = gross_profits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gross_profits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gross_profit" do
    assert_difference('GrossProfit.count') do
      post :create, :gross_profit => @gross_profit.attributes
    end

    assert_redirected_to gross_profit_path(assigns(:gross_profit))
  end

  test "should show gross_profit" do
    get :show, :id => @gross_profit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gross_profit.to_param
    assert_response :success
  end

  test "should update gross_profit" do
    put :update, :id => @gross_profit.to_param, :gross_profit => @gross_profit.attributes
    assert_redirected_to gross_profit_path(assigns(:gross_profit))
  end

  test "should destroy gross_profit" do
    assert_difference('GrossProfit.count', -1) do
      delete :destroy, :id => @gross_profit.to_param
    end

    assert_redirected_to gross_profits_path
  end
end
