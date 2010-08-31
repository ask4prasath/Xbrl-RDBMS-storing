require 'test_helper'

class DeieisControllerTest < ActionController::TestCase
  setup do
    @deiei = deieis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deieis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deiei" do
    assert_difference('Deiei.count') do
      post :create, :deiei => @deiei.attributes
    end

    assert_redirected_to deiei_path(assigns(:deiei))
  end

  test "should show deiei" do
    get :show, :id => @deiei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @deiei.to_param
    assert_response :success
  end

  test "should update deiei" do
    put :update, :id => @deiei.to_param, :deiei => @deiei.attributes
    assert_redirected_to deiei_path(assigns(:deiei))
  end

  test "should destroy deiei" do
    assert_difference('Deiei.count', -1) do
      delete :destroy, :id => @deiei.to_param
    end

    assert_redirected_to deieis_path
  end
end
