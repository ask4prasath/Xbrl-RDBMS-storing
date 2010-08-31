require 'test_helper'

class IncSalesRevenueNetsControllerTest < ActionController::TestCase
  setup do
    @inc_sales_revenue_net = inc_sales_revenue_nets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_sales_revenue_nets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_sales_revenue_net" do
    assert_difference('IncSalesRevenueNet.count') do
      post :create, :inc_sales_revenue_net => @inc_sales_revenue_net.attributes
    end

    assert_redirected_to inc_sales_revenue_net_path(assigns(:inc_sales_revenue_net))
  end

  test "should show inc_sales_revenue_net" do
    get :show, :id => @inc_sales_revenue_net.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_sales_revenue_net.to_param
    assert_response :success
  end

  test "should update inc_sales_revenue_net" do
    put :update, :id => @inc_sales_revenue_net.to_param, :inc_sales_revenue_net => @inc_sales_revenue_net.attributes
    assert_redirected_to inc_sales_revenue_net_path(assigns(:inc_sales_revenue_net))
  end

  test "should destroy inc_sales_revenue_net" do
    assert_difference('IncSalesRevenueNet.count', -1) do
      delete :destroy, :id => @inc_sales_revenue_net.to_param
    end

    assert_redirected_to inc_sales_revenue_nets_path
  end
end
