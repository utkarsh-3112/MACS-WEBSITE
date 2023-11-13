require "test_helper"

class BtechProgrammesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get btech_programmes_index_url
    assert_response :success
  end
end
