require 'test_helper'

class IncIncomeLossFromContinuingOperationsBeforeIncomeTaxesControllerTest < ActionController::TestCase
  setup do
    @inc_income_loss_from_continuing_operations_before_income_taxis = inc_income_loss_from_continuing_operations_before_income_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_income_loss_from_continuing_operations_before_income_taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_income_loss_from_continuing_operations_before_income_taxis" do
    assert_difference('IncIncomeLossFromContinuingOperationsBeforeIncomeTaxis.count') do
      post :create, :inc_income_loss_from_continuing_operations_before_income_taxis => @inc_income_loss_from_continuing_operations_before_income_taxis.attributes
    end

    assert_redirected_to inc_income_loss_from_continuing_operations_before_income_taxis_path(assigns(:inc_income_loss_from_continuing_operations_before_income_taxis))
  end

  test "should show inc_income_loss_from_continuing_operations_before_income_taxis" do
    get :show, :id => @inc_income_loss_from_continuing_operations_before_income_taxis.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_income_loss_from_continuing_operations_before_income_taxis.to_param
    assert_response :success
  end

  test "should update inc_income_loss_from_continuing_operations_before_income_taxis" do
    put :update, :id => @inc_income_loss_from_continuing_operations_before_income_taxis.to_param, :inc_income_loss_from_continuing_operations_before_income_taxis => @inc_income_loss_from_continuing_operations_before_income_taxis.attributes
    assert_redirected_to inc_income_loss_from_continuing_operations_before_income_taxis_path(assigns(:inc_income_loss_from_continuing_operations_before_income_taxis))
  end

  test "should destroy inc_income_loss_from_continuing_operations_before_income_taxis" do
    assert_difference('IncIncomeLossFromContinuingOperationsBeforeIncomeTaxis.count', -1) do
      delete :destroy, :id => @inc_income_loss_from_continuing_operations_before_income_taxis.to_param
    end

    assert_redirected_to inc_income_loss_from_continuing_operations_before_income_taxes_path
  end
end
