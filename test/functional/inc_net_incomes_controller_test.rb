require 'test_helper'

class IncNetIncomesControllerTest < ActionController::TestCase
  setup do
    @inc_net_income = inc_net_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_net_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_net_income" do
    assert_difference('IncNetIncome.count') do
      post :create, :inc_net_income => @inc_net_income.attributes
    end

    assert_redirected_to inc_net_income_path(assigns(:inc_net_income))
  end

  test "should show inc_net_income" do
    get :show, :id => @inc_net_income.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_net_income.to_param
    assert_response :success
  end

  test "should update inc_net_income" do
    put :update, :id => @inc_net_income.to_param, :inc_net_income => @inc_net_income.attributes
    assert_redirected_to inc_net_income_path(assigns(:inc_net_income))
  end

  test "should destroy inc_net_income" do
    assert_difference('IncNetIncome.count', -1) do
      delete :destroy, :id => @inc_net_income.to_param
    end

    assert_redirected_to inc_net_incomes_path
  end
end
