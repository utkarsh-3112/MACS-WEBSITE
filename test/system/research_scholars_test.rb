require "application_system_test_case"

class ResearchScholarsTest < ApplicationSystemTestCase
  setup do
    @research_scholar = research_scholars(:one)
  end

  test "visiting the index" do
    visit research_scholars_url
    assert_selector "h1", text: "Research scholars"
  end

  test "should create research scholar" do
    visit research_scholars_url
    click_on "New research scholar"

    fill_in "Category", with: @research_scholar.category
    fill_in "Dp", with: @research_scholar.dp
    fill_in "Email", with: @research_scholar.email
    fill_in "Name", with: @research_scholar.name
    fill_in "Supervisors", with: @research_scholar.supervisors_id
    click_on "Create Research scholar"

    assert_text "Research scholar was successfully created"
    click_on "Back"
  end

  test "should update Research scholar" do
    visit research_scholar_url(@research_scholar)
    click_on "Edit this research scholar", match: :first

    fill_in "Category", with: @research_scholar.category
    fill_in "Dp", with: @research_scholar.dp
    fill_in "Email", with: @research_scholar.email
    fill_in "Name", with: @research_scholar.name
    fill_in "Supervisors", with: @research_scholar.supervisors_id
    click_on "Update Research scholar"

    assert_text "Research scholar was successfully updated"
    click_on "Back"
  end

  test "should destroy Research scholar" do
    visit research_scholar_url(@research_scholar)
    click_on "Destroy this research scholar", match: :first

    assert_text "Research scholar was successfully destroyed"
  end
end
