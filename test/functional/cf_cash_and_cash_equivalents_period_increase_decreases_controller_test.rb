require 'test_helper'

class CfCashAndCashEquivalentsPeriodIncreaseDecreasesControllerTest < ActionController::TestCase
  setup do
    @cf_cash_and_cash_equivalents_period_increase_decrease = cf_cash_and_cash_equivalents_period_increase_decreases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cf_cash_and_cash_equivalents_period_increase_decreases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cf_cash_and_cash_equivalents_period_increase_decrease" do
    assert_difference('CfCashAndCashEquivalentsPeriodIncreaseDecrease.count') do
      post :create, :cf_cash_and_cash_equivalents_period_increase_decrease => @cf_cash_and_cash_equivalents_period_increase_decrease.attributes
    end

    assert_redirected_to cf_cash_and_cash_equivalents_period_increase_decrease_path(assigns(:cf_cash_and_cash_equivalents_period_increase_decrease))
  end

  test "should show cf_cash_and_cash_equivalents_period_increase_decrease" do
    get :show, :id => @cf_cash_and_cash_equivalents_period_increase_decrease.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cf_cash_and_cash_equivalents_period_increase_decrease.to_param
    assert_response :success
  end

  test "should update cf_cash_and_cash_equivalents_period_increase_decrease" do
    put :update, :id => @cf_cash_and_cash_equivalents_period_increase_decrease.to_param, :cf_cash_and_cash_equivalents_period_increase_decrease => @cf_cash_and_cash_equivalents_period_increase_decrease.attributes
    assert_redirected_to cf_cash_and_cash_equivalents_period_increase_decrease_path(assigns(:cf_cash_and_cash_equivalents_period_increase_decrease))
  end

  test "should destroy cf_cash_and_cash_equivalents_period_increase_decrease" do
    assert_difference('CfCashAndCashEquivalentsPeriodIncreaseDecrease.count', -1) do
      delete :destroy, :id => @cf_cash_and_cash_equivalents_period_increase_decrease.to_param
    end

    assert_redirected_to cf_cash_and_cash_equivalents_period_increase_decreases_path
  end
end
