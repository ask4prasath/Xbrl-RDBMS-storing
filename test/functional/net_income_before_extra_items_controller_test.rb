require 'test_helper'

class NetIncomeBeforeExtraItemsControllerTest < ActionController::TestCase
  setup do
    @net_income_before_extra_item = net_income_before_extra_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:net_income_before_extra_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create net_income_before_extra_item" do
    assert_difference('NetIncomeBeforeExtraItem.count') do
      post :create, :net_income_before_extra_item => @net_income_before_extra_item.attributes
    end

    assert_redirected_to net_income_before_extra_item_path(assigns(:net_income_before_extra_item))
  end

  test "should show net_income_before_extra_item" do
    get :show, :id => @net_income_before_extra_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @net_income_before_extra_item.to_param
    assert_response :success
  end

  test "should update net_income_before_extra_item" do
    put :update, :id => @net_income_before_extra_item.to_param, :net_income_before_extra_item => @net_income_before_extra_item.attributes
    assert_redirected_to net_income_before_extra_item_path(assigns(:net_income_before_extra_item))
  end

  test "should destroy net_income_before_extra_item" do
    assert_difference('NetIncomeBeforeExtraItem.count', -1) do
      delete :destroy, :id => @net_income_before_extra_item.to_param
    end

    assert_redirected_to net_income_before_extra_items_path
  end
end
