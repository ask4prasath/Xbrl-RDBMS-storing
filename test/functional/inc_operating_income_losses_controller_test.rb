require 'test_helper'

class IncOperatingIncomeLossesControllerTest < ActionController::TestCase
  setup do
    @inc_operating_income_loss = inc_operating_income_losses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inc_operating_income_losses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inc_operating_income_loss" do
    assert_difference('IncOperatingIncomeLoss.count') do
      post :create, :inc_operating_income_loss => @inc_operating_income_loss.attributes
    end

    assert_redirected_to inc_operating_income_loss_path(assigns(:inc_operating_income_loss))
  end

  test "should show inc_operating_income_loss" do
    get :show, :id => @inc_operating_income_loss.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inc_operating_income_loss.to_param
    assert_response :success
  end

  test "should update inc_operating_income_loss" do
    put :update, :id => @inc_operating_income_loss.to_param, :inc_operating_income_loss => @inc_operating_income_loss.attributes
    assert_redirected_to inc_operating_income_loss_path(assigns(:inc_operating_income_loss))
  end

  test "should destroy inc_operating_income_loss" do
    assert_difference('IncOperatingIncomeLoss.count', -1) do
      delete :destroy, :id => @inc_operating_income_loss.to_param
    end

    assert_redirected_to inc_operating_income_losses_path
  end
end
