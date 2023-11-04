require "test_helper"

class MtechProgrammeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mtech_programme_index_url
    assert_response :success
  end
end
