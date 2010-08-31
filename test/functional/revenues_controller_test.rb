require 'test_helper'

class RevenuesControllerTest < ActionController::TestCase
  setup do
    @revenue = revenues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revenues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revenue" do
    assert_difference('Revenue.count') do
      post :create, :revenue => @revenue.attributes
    end

    assert_redirected_to revenue_path(assigns(:revenue))
  end

  test "should show revenue" do
    get :show, :id => @revenue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @revenue.to_param
    assert_response :success
  end

  test "should update revenue" do
    put :update, :id => @revenue.to_param, :revenue => @revenue.attributes
    assert_redirected_to revenue_path(assigns(:revenue))
  end

  test "should destroy revenue" do
    assert_difference('Revenue.count', -1) do
      delete :destroy, :id => @revenue.to_param
    end

    assert_redirected_to revenues_path
  end
end
