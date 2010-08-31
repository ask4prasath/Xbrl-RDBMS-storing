require 'test_helper'

class IncincomeLossFromContinuingOperationsBeforeIncomeTaxesControllerTest < ActionController::TestCase
  setup do
    @incincome_loss_from_continuing_operations_before_income_tax = incincome_loss_from_continuing_operations_before_income_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incincome_loss_from_continuing_operations_before_income_taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incincome_loss_from_continuing_operations_before_income_tax" do
    assert_difference('IncincomeLossFromContinuingOperationsBeforeIncomeTax.count') do
      post :create, :incincome_loss_from_continuing_operations_before_income_tax => @incincome_loss_from_continuing_operations_before_income_tax.attributes
    end

    assert_redirected_to incincome_loss_from_continuing_operations_before_income_tax_path(assigns(:incincome_loss_from_continuing_operations_before_income_tax))
  end

  test "should show incincome_loss_from_continuing_operations_before_income_tax" do
    get :show, :id => @incincome_loss_from_continuing_operations_before_income_tax.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @incincome_loss_from_continuing_operations_before_income_tax.to_param
    assert_response :success
  end

  test "should update incincome_loss_from_continuing_operations_before_income_tax" do
    put :update, :id => @incincome_loss_from_continuing_operations_before_income_tax.to_param, :incincome_loss_from_continuing_operations_before_income_tax => @incincome_loss_from_continuing_operations_before_income_tax.attributes
    assert_redirected_to incincome_loss_from_continuing_operations_before_income_tax_path(assigns(:incincome_loss_from_continuing_operations_before_income_tax))
  end

  test "should destroy incincome_loss_from_continuing_operations_before_income_tax" do
    assert_difference('IncincomeLossFromContinuingOperationsBeforeIncomeTax.count', -1) do
      delete :destroy, :id => @incincome_loss_from_continuing_operations_before_income_tax.to_param
    end

    assert_redirected_to incincome_loss_from_continuing_operations_before_income_taxes_path
  end
end
