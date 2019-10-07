require 'test_helper'

class ParcoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parcours_index_url
    assert_response :success
  end

end
