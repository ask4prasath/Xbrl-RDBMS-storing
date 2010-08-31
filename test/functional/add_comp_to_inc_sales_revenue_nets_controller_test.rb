require 'test_helper'

class AddCompToIncSalesRevenueNetsControllerTest < ActionController::TestCase
  setup do
    @add_comp_to_inc_sales_revenue_net = add_comp_to_inc_sales_revenue_nets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_comp_to_inc_sales_revenue_nets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_comp_to_inc_sales_revenue_net" do
    assert_difference('AddCompToIncSalesRevenueNet.count') do
      post :create, :add_comp_to_inc_sales_revenue_net => @add_comp_to_inc_sales_revenue_net.attributes
    end

    assert_redirected_to add_comp_to_inc_sales_revenue_net_path(assigns(:add_comp_to_inc_sales_revenue_net))
  end

  test "should show add_comp_to_inc_sales_revenue_net" do
    get :show, :id => @add_comp_to_inc_sales_revenue_net.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_comp_to_inc_sales_revenue_net.to_param
    assert_response :success
  end

  test "should update add_comp_to_inc_sales_revenue_net" do
    put :update, :id => @add_comp_to_inc_sales_revenue_net.to_param, :add_comp_to_inc_sales_revenue_net => @add_comp_to_inc_sales_revenue_net.attributes
    assert_redirected_to add_comp_to_inc_sales_revenue_net_path(assigns(:add_comp_to_inc_sales_revenue_net))
  end

  test "should destroy add_comp_to_inc_sales_revenue_net" do
    assert_difference('AddCompToIncSalesRevenueNet.count', -1) do
      delete :destroy, :id => @add_comp_to_inc_sales_revenue_net.to_param
    end

    assert_redirected_to add_comp_to_inc_sales_revenue_nets_path
  end
end
