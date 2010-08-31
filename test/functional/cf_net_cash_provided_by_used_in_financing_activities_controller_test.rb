require 'test_helper'

class CfNetCashProvidedByUsedInFinancingActivitiesControllerTest < ActionController::TestCase
  setup do
    @cf_net_cash_provided_by_used_in_financing_activity = cf_net_cash_provided_by_used_in_financing_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cf_net_cash_provided_by_used_in_financing_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cf_net_cash_provided_by_used_in_financing_activity" do
    assert_difference('CfNetCashProvidedByUsedInFinancingActivity.count') do
      post :create, :cf_net_cash_provided_by_used_in_financing_activity => @cf_net_cash_provided_by_used_in_financing_activity.attributes
    end

    assert_redirected_to cf_net_cash_provided_by_used_in_financing_activity_path(assigns(:cf_net_cash_provided_by_used_in_financing_activity))
  end

  test "should show cf_net_cash_provided_by_used_in_financing_activity" do
    get :show, :id => @cf_net_cash_provided_by_used_in_financing_activity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cf_net_cash_provided_by_used_in_financing_activity.to_param
    assert_response :success
  end

  test "should update cf_net_cash_provided_by_used_in_financing_activity" do
    put :update, :id => @cf_net_cash_provided_by_used_in_financing_activity.to_param, :cf_net_cash_provided_by_used_in_financing_activity => @cf_net_cash_provided_by_used_in_financing_activity.attributes
    assert_redirected_to cf_net_cash_provided_by_used_in_financing_activity_path(assigns(:cf_net_cash_provided_by_used_in_financing_activity))
  end

  test "should destroy cf_net_cash_provided_by_used_in_financing_activity" do
    assert_difference('CfNetCashProvidedByUsedInFinancingActivity.count', -1) do
      delete :destroy, :id => @cf_net_cash_provided_by_used_in_financing_activity.to_param
    end

    assert_redirected_to cf_net_cash_provided_by_used_in_financing_activities_path
  end
end
