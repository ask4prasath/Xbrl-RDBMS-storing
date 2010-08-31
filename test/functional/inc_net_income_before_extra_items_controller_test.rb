require 'test_helper'

class IncNetIncomeBeforeExtraItemsControllerTest < ActionController::TestCase
  setup do
    @inc_net_income_before_extra_item = inc_net_income_before_extra_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_net_income_before_extra_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_net_income_before_extra_item" do
    assert_difference('IncNetIncomeBeforeExtraItem.count') do
      post :create, :inc_net_income_before_extra_item => @inc_net_income_before_extra_item.attributes
    end

    assert_redirected_to inc_net_income_before_extra_item_path(assigns(:inc_net_income_before_extra_item))
  end

  test "should show inc_net_income_before_extra_item" do
    get :show, :id => @inc_net_income_before_extra_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_net_income_before_extra_item.to_param
    assert_response :success
  end

  test "should update inc_net_income_before_extra_item" do
    put :update, :id => @inc_net_income_before_extra_item.to_param, :inc_net_income_before_extra_item => @inc_net_income_before_extra_item.attributes
    assert_redirected_to inc_net_income_before_extra_item_path(assigns(:inc_net_income_before_extra_item))
  end

  test "should destroy inc_net_income_before_extra_item" do
    assert_difference('IncNetIncomeBeforeExtraItem.count', -1) do
      delete :destroy, :id => @inc_net_income_before_extra_item.to_param
    end

    assert_redirected_to inc_net_income_before_extra_items_path
  end
end
