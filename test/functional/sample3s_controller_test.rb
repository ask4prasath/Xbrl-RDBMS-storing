require 'test_helper'

class Sample3sControllerTest < ActionController::TestCase
  setup do
    @sample3 = sample3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample3" do
    assert_difference('Sample3.count') do
      post :create, :sample3 => @sample3.attributes
    end

    assert_redirected_to sample3_path(assigns(:sample3))
  end

  test "should show sample3" do
    get :show, :id => @sample3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sample3.to_param
    assert_response :success
  end

  test "should update sample3" do
    put :update, :id => @sample3.to_param, :sample3 => @sample3.attributes
    assert_redirected_to sample3_path(assigns(:sample3))
  end

  test "should destroy sample3" do
    assert_difference('Sample3.count', -1) do
      delete :destroy, :id => @sample3.to_param
    end

    assert_redirected_to sample3s_path
  end
end
