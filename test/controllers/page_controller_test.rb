require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get location_profit" do
    get page_location_profit_url
    assert_response :success
  end

end
