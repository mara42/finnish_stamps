require 'test_helper'

class StampControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stamp_index_url
    assert_response :success
  end

  test "should get show" do
    get stamp_show_url
    assert_response :success
  end

end
