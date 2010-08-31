require 'test_helper'

class AddCompToIncGrossProfitsControllerTest < ActionController::TestCase
  setup do
    @add_comp_to_inc_gross_profit = add_comp_to_inc_gross_profits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_comp_to_inc_gross_profits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_comp_to_inc_gross_profit" do
    assert_difference('AddCompToIncGrossProfit.count') do
      post :create, :add_comp_to_inc_gross_profit => @add_comp_to_inc_gross_profit.attributes
    end

    assert_redirected_to add_comp_to_inc_gross_profit_path(assigns(:add_comp_to_inc_gross_profit))
  end

  test "should show add_comp_to_inc_gross_profit" do
    get :show, :id => @add_comp_to_inc_gross_profit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_comp_to_inc_gross_profit.to_param
    assert_response :success
  end

  test "should update add_comp_to_inc_gross_profit" do
    put :update, :id => @add_comp_to_inc_gross_profit.to_param, :add_comp_to_inc_gross_profit => @add_comp_to_inc_gross_profit.attributes
    assert_redirected_to add_comp_to_inc_gross_profit_path(assigns(:add_comp_to_inc_gross_profit))
  end

  test "should destroy add_comp_to_inc_gross_profit" do
    assert_difference('AddCompToIncGrossProfit.count', -1) do
      delete :destroy, :id => @add_comp_to_inc_gross_profit.to_param
    end

    assert_redirected_to add_comp_to_inc_gross_profits_path
  end
end
