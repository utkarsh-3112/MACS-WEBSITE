require "test_helper"

class AssistantLecturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistant_lecturer = assistant_lecturers(:one)
  end

  test "should get index" do
    get assistant_lecturers_url
    assert_response :success
  end

  test "should get new" do
    get new_assistant_lecturer_url
    assert_response :success
  end

  test "should create assistant_lecturer" do
    assert_difference("AssistantLecturer.count") do
      post assistant_lecturers_url, params: { assistant_lecturer: { contact_no: @assistant_lecturer.contact_no, dp: @assistant_lecturer.dp, email: @assistant_lecturer.email, name: @assistant_lecturer.name, qualification: @assistant_lecturer.qualification } }
    end

    assert_redirected_to assistant_lecturer_url(AssistantLecturer.last)
  end

  test "should show assistant_lecturer" do
    get assistant_lecturer_url(@assistant_lecturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistant_lecturer_url(@assistant_lecturer)
    assert_response :success
  end

  test "should update assistant_lecturer" do
    patch assistant_lecturer_url(@assistant_lecturer), params: { assistant_lecturer: { contact_no: @assistant_lecturer.contact_no, dp: @assistant_lecturer.dp, email: @assistant_lecturer.email, name: @assistant_lecturer.name, qualification: @assistant_lecturer.qualification } }
    assert_redirected_to assistant_lecturer_url(@assistant_lecturer)
  end

  test "should destroy assistant_lecturer" do
    assert_difference("AssistantLecturer.count", -1) do
      delete assistant_lecturer_url(@assistant_lecturer)
    end

    assert_redirected_to assistant_lecturers_url
  end
end
