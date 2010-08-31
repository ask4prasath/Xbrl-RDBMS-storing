require 'test_helper'

class NibeisControllerTest < ActionController::TestCase
  setup do
    @nibei = nibeis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nibeis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nibei" do
    assert_difference('Nibei.count') do
      post :create, :nibei => @nibei.attributes
    end

    assert_redirected_to nibei_path(assigns(:nibei))
  end

  test "should show nibei" do
    get :show, :id => @nibei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nibei.to_param
    assert_response :success
  end

  test "should update nibei" do
    put :update, :id => @nibei.to_param, :nibei => @nibei.attributes
    assert_redirected_to nibei_path(assigns(:nibei))
  end

  test "should destroy nibei" do
    assert_difference('Nibei.count', -1) do
      delete :destroy, :id => @nibei.to_param
    end

    assert_redirected_to nibeis_path
  end
end
