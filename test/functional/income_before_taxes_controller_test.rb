require 'test_helper'

class IncomeBeforeTaxesControllerTest < ActionController::TestCase
  setup do
    @income_before_tax = income_before_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:income_before_taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income_before_tax" do
    assert_difference('IncomeBeforeTax.count') do
      post :create, :income_before_tax => @income_before_tax.attributes
    end

    assert_redirected_to income_before_tax_path(assigns(:income_before_tax))
  end

  test "should show income_before_tax" do
    get :show, :id => @income_before_tax.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @income_before_tax.to_param
    assert_response :success
  end

  test "should update income_before_tax" do
    put :update, :id => @income_before_tax.to_param, :income_before_tax => @income_before_tax.attributes
    assert_redirected_to income_before_tax_path(assigns(:income_before_tax))
  end

  test "should destroy income_before_tax" do
    assert_difference('IncomeBeforeTax.count', -1) do
      delete :destroy, :id => @income_before_tax.to_param
    end

    assert_redirected_to income_before_taxes_path
  end
end
