require 'test_helper'

class AteliersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ateliers_index_url
    assert_response :success
  end

end
