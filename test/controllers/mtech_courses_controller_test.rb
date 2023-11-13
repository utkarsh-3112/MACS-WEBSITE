require "test_helper"

class MtechCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mtech_courses_index_url
    assert_response :success
  end
end
