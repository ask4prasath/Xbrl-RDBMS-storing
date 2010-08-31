require 'test_helper'

class NetIncomesControllerTest < ActionController::TestCase
  setup do
    @net_income = net_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:net_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create net_income" do
    assert_difference('NetIncome.count') do
      post :create, :net_income => @net_income.attributes
    end

    assert_redirected_to net_income_path(assigns(:net_income))
  end

  test "should show net_income" do
    get :show, :id => @net_income.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @net_income.to_param
    assert_response :success
  end

  test "should update net_income" do
    put :update, :id => @net_income.to_param, :net_income => @net_income.attributes
    assert_redirected_to net_income_path(assigns(:net_income))
  end

  test "should destroy net_income" do
    assert_difference('NetIncome.count', -1) do
      delete :destroy, :id => @net_income.to_param
    end

    assert_redirected_to net_incomes_path
  end
end
