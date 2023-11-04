require "test_helper"

class McaProgrammeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mca_programme_index_url
    assert_response :success
  end
end
