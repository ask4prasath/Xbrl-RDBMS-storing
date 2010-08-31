require 'test_helper'

class BeieisControllerTest < ActionController::TestCase
  setup do
    @beiei = beieis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beieis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beiei" do
    assert_difference('Beiei.count') do
      post :create, :beiei => @beiei.attributes
    end

    assert_redirected_to beiei_path(assigns(:beiei))
  end

  test "should show beiei" do
    get :show, :id => @beiei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beiei.to_param
    assert_response :success
  end

  test "should update beiei" do
    put :update, :id => @beiei.to_param, :beiei => @beiei.attributes
    assert_redirected_to beiei_path(assigns(:beiei))
  end

  test "should destroy beiei" do
    assert_difference('Beiei.count', -1) do
      delete :destroy, :id => @beiei.to_param
    end

    assert_redirected_to beieis_path
  end
end
