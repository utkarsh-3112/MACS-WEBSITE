require "application_system_test_case"

class AssistantLecturersTest < ApplicationSystemTestCase
  setup do
    @assistant_lecturer = assistant_lecturers(:one)
  end

  test "visiting the index" do
    visit assistant_lecturers_url
    assert_selector "h1", text: "Assistant lecturers"
  end

  test "should create assistant lecturer" do
    visit assistant_lecturers_url
    click_on "New assistant lecturer"

    fill_in "Contact no", with: @assistant_lecturer.contact_no
    fill_in "Dp", with: @assistant_lecturer.dp
    fill_in "Email", with: @assistant_lecturer.email
    fill_in "Name", with: @assistant_lecturer.name
    fill_in "Qualification", with: @assistant_lecturer.qualification
    click_on "Create Assistant lecturer"

    assert_text "Assistant lecturer was successfully created"
    click_on "Back"
  end

  test "should update Assistant lecturer" do
    visit assistant_lecturer_url(@assistant_lecturer)
    click_on "Edit this assistant lecturer", match: :first

    fill_in "Contact no", with: @assistant_lecturer.contact_no
    fill_in "Dp", with: @assistant_lecturer.dp
    fill_in "Email", with: @assistant_lecturer.email
    fill_in "Name", with: @assistant_lecturer.name
    fill_in "Qualification", with: @assistant_lecturer.qualification
    click_on "Update Assistant lecturer"

    assert_text "Assistant lecturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Assistant lecturer" do
    visit assistant_lecturer_url(@assistant_lecturer)
    click_on "Destroy this assistant lecturer", match: :first

    assert_text "Assistant lecturer was successfully destroyed"
  end
end
