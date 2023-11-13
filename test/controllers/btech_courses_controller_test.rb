require "test_helper"

class BtechCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get btech_courses_index_url
    assert_response :success
  end
end
