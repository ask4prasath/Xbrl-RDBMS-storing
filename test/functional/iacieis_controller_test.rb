require 'test_helper'

class IacieisControllerTest < ActionController::TestCase
  setup do
    @iaciei = iacieis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iacieis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iaciei" do
    assert_difference('Iaciei.count') do
      post :create, :iaciei => @iaciei.attributes
    end

    assert_redirected_to iaciei_path(assigns(:iaciei))
  end

  test "should show iaciei" do
    get :show, :id => @iaciei.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @iaciei.to_param
    assert_response :success
  end

  test "should update iaciei" do
    put :update, :id => @iaciei.to_param, :iaciei => @iaciei.attributes
    assert_redirected_to iaciei_path(assigns(:iaciei))
  end

  test "should destroy iaciei" do
    assert_difference('Iaciei.count', -1) do
      delete :destroy, :id => @iaciei.to_param
    end

    assert_redirected_to iacieis_path
  end
end
