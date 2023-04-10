require "application_system_test_case"

class ResearchConsultanciesTest < ApplicationSystemTestCase
  setup do
    @research_consultancy = research_consultancies(:one)
  end

  test "visiting the index" do
    visit research_consultancies_url
    assert_selector "h1", text: "Research consultancies"
  end

  test "should create research consultancy" do
    visit research_consultancies_url
    click_on "New research consultancy"

    fill_in "Faculty", with: @research_consultancy.faculty_id
    fill_in "Project name", with: @research_consultancy.project_name
    fill_in "Project type", with: @research_consultancy.project_type
    fill_in "Sanctioned amount", with: @research_consultancy.sanctioned_amount
    fill_in "Status", with: @research_consultancy.status
    click_on "Create Research consultancy"

    assert_text "Research consultancy was successfully created"
    click_on "Back"
  end

  test "should update Research consultancy" do
    visit research_consultancy_url(@research_consultancy)
    click_on "Edit this research consultancy", match: :first

    fill_in "Faculty", with: @research_consultancy.faculty_id
    fill_in "Project name", with: @research_consultancy.project_name
    fill_in "Project type", with: @research_consultancy.project_type
    fill_in "Sanctioned amount", with: @research_consultancy.sanctioned_amount
    fill_in "Status", with: @research_consultancy.status
    click_on "Update Research consultancy"

    assert_text "Research consultancy was successfully updated"
    click_on "Back"
  end

  test "should destroy Research consultancy" do
    visit research_consultancy_url(@research_consultancy)
    click_on "Destroy this research consultancy", match: :first

    assert_text "Research consultancy was successfully destroyed"
  end
end
