require 'test_helper'

class BeeeisControllerTest < ActionController::TestCase
  setup do
    @beeei = beeeis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beeeis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beeei" do
    assert_difference('Beeei.count') do
      post :create, :beeei => @beeei.attributes
    end

    assert_redirected_to beeei_path(assigns(:beeei))
  end

  test "should show beeei" do
    get :show, :id => @beeei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beeei.to_param
    assert_response :success
  end

  test "should update beeei" do
    put :update, :id => @beeei.to_param, :beeei => @beeei.attributes
    assert_redirected_to beeei_path(assigns(:beeei))
  end

  test "should destroy beeei" do
    assert_difference('Beeei.count', -1) do
      delete :destroy, :id => @beeei.to_param
    end

    assert_redirected_to beeeis_path
  end
end
