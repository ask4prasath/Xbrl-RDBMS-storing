require 'test_helper'

class NibtsControllerTest < ActionController::TestCase
  setup do
    @nibt = nibts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nibts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nibt" do
    assert_difference('Nibt.count') do
      post :create, :nibt => @nibt.attributes
    end

    assert_redirected_to nibt_path(assigns(:nibt))
  end

  test "should show nibt" do
    get :show, :id => @nibt.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nibt.to_param
    assert_response :success
  end

  test "should update nibt" do
    put :update, :id => @nibt.to_param, :nibt => @nibt.attributes
    assert_redirected_to nibt_path(assigns(:nibt))
  end

  test "should destroy nibt" do
    assert_difference('Nibt.count', -1) do
      delete :destroy, :id => @nibt.to_param
    end

    assert_redirected_to nibts_path
  end
end
