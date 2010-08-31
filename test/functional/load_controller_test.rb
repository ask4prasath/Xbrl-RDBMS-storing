require 'test_helper'

class LoadControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get submit" do
    get :submit
    assert_response :success
  end

end
