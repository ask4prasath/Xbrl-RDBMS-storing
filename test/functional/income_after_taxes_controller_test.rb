require 'test_helper'

class IncomeAfterTaxesControllerTest < ActionController::TestCase
  setup do
    @income_after_tax = income_after_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:income_after_taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income_after_tax" do
    assert_difference('IncomeAfterTax.count') do
      post :create, :income_after_tax => @income_after_tax.attributes
    end

    assert_redirected_to income_after_tax_path(assigns(:income_after_tax))
  end

  test "should show income_after_tax" do
    get :show, :id => @income_after_tax.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @income_after_tax.to_param
    assert_response :success
  end

  test "should update income_after_tax" do
    put :update, :id => @income_after_tax.to_param, :income_after_tax => @income_after_tax.attributes
    assert_redirected_to income_after_tax_path(assigns(:income_after_tax))
  end

  test "should destroy income_after_tax" do
    assert_difference('IncomeAfterTax.count', -1) do
      delete :destroy, :id => @income_after_tax.to_param
    end

    assert_redirected_to income_after_taxes_path
  end
end
