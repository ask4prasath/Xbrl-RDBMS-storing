require 'test_helper'

class ToesControllerTest < ActionController::TestCase
  setup do
    @toe = toes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toe" do
    assert_difference('Toe.count') do
      post :create, :toe => @toe.attributes
    end

    assert_redirected_to toe_path(assigns(:toe))
  end

  test "should show toe" do
    get :show, :id => @toe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @toe.to_param
    assert_response :success
  end

  test "should update toe" do
    put :update, :id => @toe.to_param, :toe => @toe.attributes
    assert_redirected_to toe_path(assigns(:toe))
  end

  test "should destroy toe" do
    assert_difference('Toe.count', -1) do
      delete :destroy, :id => @toe.to_param
    end

    assert_redirected_to toes_path
  end
end
