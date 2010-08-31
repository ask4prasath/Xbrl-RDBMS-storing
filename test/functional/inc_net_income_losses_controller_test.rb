require 'test_helper'

class IncNetIncomeLossesControllerTest < ActionController::TestCase
  setup do
    @inc_net_income_loss = inc_net_income_losses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_net_income_losses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_net_income_loss" do
    assert_difference('IncNetIncomeLoss.count') do
      post :create, :inc_net_income_loss => @inc_net_income_loss.attributes
    end

    assert_redirected_to inc_net_income_loss_path(assigns(:inc_net_income_loss))
  end

  test "should show inc_net_income_loss" do
    get :show, :id => @inc_net_income_loss.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_net_income_loss.to_param
    assert_response :success
  end

  test "should update inc_net_income_loss" do
    put :update, :id => @inc_net_income_loss.to_param, :inc_net_income_loss => @inc_net_income_loss.attributes
    assert_redirected_to inc_net_income_loss_path(assigns(:inc_net_income_loss))
  end

  test "should destroy inc_net_income_loss" do
    assert_difference('IncNetIncomeLoss.count', -1) do
      delete :destroy, :id => @inc_net_income_loss.to_param
    end

    assert_redirected_to inc_net_income_losses_path
  end
end
