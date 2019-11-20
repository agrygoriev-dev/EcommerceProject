require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get show_cart" do
    get orders_show_cart_url
    assert_response :success
  end

end
