require 'test_helper'

class IaceeisControllerTest < ActionController::TestCase
  setup do
    @iaceei = iaceeis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iaceeis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iaceei" do
    assert_difference('Iaceei.count') do
      post :create, :iaceei => @iaceei.attributes
    end

    assert_redirected_to iaceei_path(assigns(:iaceei))
  end

  test "should show iaceei" do
    get :show, :id => @iaceei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @iaceei.to_param
    assert_response :success
  end

  test "should update iaceei" do
    put :update, :id => @iaceei.to_param, :iaceei => @iaceei.attributes
    assert_redirected_to iaceei_path(assigns(:iaceei))
  end

  test "should destroy iaceei" do
    assert_difference('Iaceei.count', -1) do
      delete :destroy, :id => @iaceei.to_param
    end

    assert_redirected_to iaceeis_path
  end
end
