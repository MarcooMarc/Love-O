require 'test_helper'

class BentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bentos_index_url
    assert_response :success
  end

end
