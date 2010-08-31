require 'test_helper'

class NiacsControllerTest < ActionController::TestCase
  setup do
    @niac = niacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create niac" do
    assert_difference('Niac.count') do
      post :create, :niac => @niac.attributes
    end

    assert_redirected_to niac_path(assigns(:niac))
  end

  test "should show niac" do
    get :show, :id => @niac.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @niac.to_param
    assert_response :success
  end

  test "should update niac" do
    put :update, :id => @niac.to_param, :niac => @niac.attributes
    assert_redirected_to niac_path(assigns(:niac))
  end

  test "should destroy niac" do
    assert_difference('Niac.count', -1) do
      delete :destroy, :id => @niac.to_param
    end

    assert_redirected_to niacs_path
  end
end
