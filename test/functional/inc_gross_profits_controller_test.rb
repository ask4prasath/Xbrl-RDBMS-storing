require 'test_helper'

class IncGrossProfitsControllerTest < ActionController::TestCase
  setup do
    @inc_gross_profit = inc_gross_profits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_gross_profits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_gross_profit" do
    assert_difference('IncGrossProfit.count') do
      post :create, :inc_gross_profit => @inc_gross_profit.attributes
    end

    assert_redirected_to inc_gross_profit_path(assigns(:inc_gross_profit))
  end

  test "should show inc_gross_profit" do
    get :show, :id => @inc_gross_profit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_gross_profit.to_param
    assert_response :success
  end

  test "should update inc_gross_profit" do
    put :update, :id => @inc_gross_profit.to_param, :inc_gross_profit => @inc_gross_profit.attributes
    assert_redirected_to inc_gross_profit_path(assigns(:inc_gross_profit))
  end

  test "should destroy inc_gross_profit" do
    assert_difference('IncGrossProfit.count', -1) do
      delete :destroy, :id => @inc_gross_profit.to_param
    end

    assert_redirected_to inc_gross_profits_path
  end
end
