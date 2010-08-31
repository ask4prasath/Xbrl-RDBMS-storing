require 'test_helper'

class OperatingIncomesControllerTest < ActionController::TestCase
  setup do
    @operating_income = operating_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operating_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operating_income" do
    assert_difference('OperatingIncome.count') do
      post :create, :operating_income => @operating_income.attributes
    end

    assert_redirected_to operating_income_path(assigns(:operating_income))
  end

  test "should show operating_income" do
    get :show, :id => @operating_income.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @operating_income.to_param
    assert_response :success
  end

  test "should update operating_income" do
    put :update, :id => @operating_income.to_param, :operating_income => @operating_income.attributes
    assert_redirected_to operating_income_path(assigns(:operating_income))
  end

  test "should destroy operating_income" do
    assert_difference('OperatingIncome.count', -1) do
      delete :destroy, :id => @operating_income.to_param
    end

    assert_redirected_to operating_incomes_path
  end
end
