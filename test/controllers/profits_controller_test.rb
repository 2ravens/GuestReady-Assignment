require 'test_helper'

class ProfitsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profits_new_url
    assert_response :success
  end

  test "should get create" do
    get profits_create_url
    assert_response :success
  end

end
