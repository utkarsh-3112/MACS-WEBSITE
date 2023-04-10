require "application_system_test_case"

class PublicationsTest < ApplicationSystemTestCase
  setup do
    @publication = publications(:one)
  end

  test "visiting the index" do
    visit publications_url
    assert_selector "h1", text: "Publications"
  end

  test "should create publication" do
    visit publications_url
    click_on "New publication"

    fill_in "Name", with: @publication.name
    fill_in "Publish in", with: @publication.publish_in
    fill_in "Reigon", with: @publication.reigon
    fill_in "Url", with: @publication.url
    fill_in "Year", with: @publication.year
    click_on "Create Publication"

    assert_text "Publication was successfully created"
    click_on "Back"
  end

  test "should update Publication" do
    visit publication_url(@publication)
    click_on "Edit this publication", match: :first

    fill_in "Name", with: @publication.name
    fill_in "Publish in", with: @publication.publish_in
    fill_in "Reigon", with: @publication.reigon
    fill_in "Url", with: @publication.url
    fill_in "Year", with: @publication.year
    click_on "Update Publication"

    assert_text "Publication was successfully updated"
    click_on "Back"
  end

  test "should destroy Publication" do
    visit publication_url(@publication)
    click_on "Destroy this publication", match: :first

    assert_text "Publication was successfully destroyed"
  end
end
