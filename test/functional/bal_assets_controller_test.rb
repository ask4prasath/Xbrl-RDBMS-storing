require 'test_helper'

class BalAssetsControllerTest < ActionController::TestCase
  setup do
    @bal_asset = bal_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_asset" do
    assert_difference('BalAsset.count') do
      post :create, :bal_asset => @bal_asset.attributes
    end

    assert_redirected_to bal_asset_path(assigns(:bal_asset))
  end

  test "should show bal_asset" do
    get :show, :id => @bal_asset.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_asset.to_param
    assert_response :success
  end

  test "should update bal_asset" do
    put :update, :id => @bal_asset.to_param, :bal_asset => @bal_asset.attributes
    assert_redirected_to bal_asset_path(assigns(:bal_asset))
  end

  test "should destroy bal_asset" do
    assert_difference('BalAsset.count', -1) do
      delete :destroy, :id => @bal_asset.to_param
    end

    assert_redirected_to bal_assets_path
  end
end
