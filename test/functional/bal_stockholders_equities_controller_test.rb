require 'test_helper'

class BalStockholdersEquitiesControllerTest < ActionController::TestCase
  setup do
    @bal_stockholders_equity = bal_stockholders_equities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_stockholders_equities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_stockholders_equity" do
    assert_difference('BalStockholdersEquity.count') do
      post :create, :bal_stockholders_equity => @bal_stockholders_equity.attributes
    end

    assert_redirected_to bal_stockholders_equity_path(assigns(:bal_stockholders_equity))
  end

  test "should show bal_stockholders_equity" do
    get :show, :id => @bal_stockholders_equity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_stockholders_equity.to_param
    assert_response :success
  end

  test "should update bal_stockholders_equity" do
    put :update, :id => @bal_stockholders_equity.to_param, :bal_stockholders_equity => @bal_stockholders_equity.attributes
    assert_redirected_to bal_stockholders_equity_path(assigns(:bal_stockholders_equity))
  end

  test "should destroy bal_stockholders_equity" do
    assert_difference('BalStockholdersEquity.count', -1) do
      delete :destroy, :id => @bal_stockholders_equity.to_param
    end

    assert_redirected_to bal_stockholders_equities_path
  end
end
