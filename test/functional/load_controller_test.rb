require 'test_helper'

class LoadControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get submit" do
     post :submit, "search"=>{"query1"=>">", "query2"=>">", "query3"=>">", "value1"=>"1", "value2"=>"1", "value3"=>"1", "name1"=>"inc_gross_profits", "name2"=>"bal_stockholders_equities", "name3"=>"inc_gross_profits"}
  end

end
