require 'test_helper'

class NiatsControllerTest < ActionController::TestCase
  setup do
    @niat = niats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create niat" do
    assert_difference('Niat.count') do
      post :create, :niat => @niat.attributes
    end

    assert_redirected_to niat_path(assigns(:niat))
  end

  test "should show niat" do
    get :show, :id => @niat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @niat.to_param
    assert_response :success
  end

  test "should update niat" do
    put :update, :id => @niat.to_param, :niat => @niat.attributes
    assert_redirected_to niat_path(assigns(:niat))
  end

  test "should destroy niat" do
    assert_difference('Niat.count', -1) do
      delete :destroy, :id => @niat.to_param
    end

    assert_redirected_to niats_path
  end
end
