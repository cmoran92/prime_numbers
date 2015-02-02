require 'test_helper'

class ServiceControllerTest < ActionController::TestCase
  def json_response
    ActiveSupport::JSON.decode @response.body
  end

  test "should get first prime number" do
    get :index
    assert_response :success
    assert_equal [2], json_response
  end

  test "should get second prime number" do
    get :index
    get :index
    assert_response :success
    assert_equal [3], json_response
  end

  test "should get first two prime numbers" do
    get :index, {n: 2}
    assert_response :success
    assert_equal [2,3], json_response
  end

  test "should get first prime number after resetting" do
    get :index
    delete :delete
    get :index
    assert_response :success
    assert_equal [2], json_response
  end
end
