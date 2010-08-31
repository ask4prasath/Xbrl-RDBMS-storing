require 'test_helper'

class BalLiabilitiesAndStockholdersEquitiesControllerTest < ActionController::TestCase
  setup do
    @bal_liabilities_and_stockholders_equity = bal_liabilities_and_stockholders_equities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_liabilities_and_stockholders_equities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_liabilities_and_stockholders_equity" do
    assert_difference('BalLiabilitiesAndStockholdersEquity.count') do
      post :create, :bal_liabilities_and_stockholders_equity => @bal_liabilities_and_stockholders_equity.attributes
    end

    assert_redirected_to bal_liabilities_and_stockholders_equity_path(assigns(:bal_liabilities_and_stockholders_equity))
  end

  test "should show bal_liabilities_and_stockholders_equity" do
    get :show, :id => @bal_liabilities_and_stockholders_equity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_liabilities_and_stockholders_equity.to_param
    assert_response :success
  end

  test "should update bal_liabilities_and_stockholders_equity" do
    put :update, :id => @bal_liabilities_and_stockholders_equity.to_param, :bal_liabilities_and_stockholders_equity => @bal_liabilities_and_stockholders_equity.attributes
    assert_redirected_to bal_liabilities_and_stockholders_equity_path(assigns(:bal_liabilities_and_stockholders_equity))
  end

  test "should destroy bal_liabilities_and_stockholders_equity" do
    assert_difference('BalLiabilitiesAndStockholdersEquity.count', -1) do
      delete :destroy, :id => @bal_liabilities_and_stockholders_equity.to_param
    end

    assert_redirected_to bal_liabilities_and_stockholders_equities_path
  end
end
