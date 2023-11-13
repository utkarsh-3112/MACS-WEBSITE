require "test_helper"

class McaCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mca_courses_index_url
    assert_response :success
  end
end
