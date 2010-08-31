require 'test_helper'

class BalOtherAssetsCurrentsControllerTest < ActionController::TestCase
  setup do
    @bal_other_assets_current = bal_other_assets_currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bal_other_assets_currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bal_other_assets_current" do
    assert_difference('BalOtherAssetsCurrent.count') do
      post :create, :bal_other_assets_current => @bal_other_assets_current.attributes
    end

    assert_redirected_to bal_other_assets_current_path(assigns(:bal_other_assets_current))
  end

  test "should show bal_other_assets_current" do
    get :show, :id => @bal_other_assets_current.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bal_other_assets_current.to_param
    assert_response :success
  end

  test "should update bal_other_assets_current" do
    put :update, :id => @bal_other_assets_current.to_param, :bal_other_assets_current => @bal_other_assets_current.attributes
    assert_redirected_to bal_other_assets_current_path(assigns(:bal_other_assets_current))
  end

  test "should destroy bal_other_assets_current" do
    assert_difference('BalOtherAssetsCurrent.count', -1) do
      delete :destroy, :id => @bal_other_assets_current.to_param
    end

    assert_redirected_to bal_other_assets_currents_path
  end
end
