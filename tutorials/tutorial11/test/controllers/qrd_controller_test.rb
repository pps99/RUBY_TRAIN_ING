require "test_helper"

class QrdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qrd_index_url
    assert_response :success
  end
end
