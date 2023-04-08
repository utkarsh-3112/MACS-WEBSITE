require "application_system_test_case"

class ContractStaffsTest < ApplicationSystemTestCase
  setup do
    @contract_staff = contract_staffs(:one)
  end

  test "visiting the index" do
    visit contract_staffs_url
    assert_selector "h1", text: "Contract staffs"
  end

  test "should create contract staff" do
    visit contract_staffs_url
    click_on "New contract staff"

    fill_in "Designation", with: @contract_staff.designation
    fill_in "Dp", with: @contract_staff.dp
    fill_in "Name", with: @contract_staff.name
    fill_in "Qualification", with: @contract_staff.qualification
    click_on "Create Contract staff"

    assert_text "Contract staff was successfully created"
    click_on "Back"
  end

  test "should update Contract staff" do
    visit contract_staff_url(@contract_staff)
    click_on "Edit this contract staff", match: :first

    fill_in "Designation", with: @contract_staff.designation
    fill_in "Dp", with: @contract_staff.dp
    fill_in "Name", with: @contract_staff.name
    fill_in "Qualification", with: @contract_staff.qualification
    click_on "Update Contract staff"

    assert_text "Contract staff was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract staff" do
    visit contract_staff_url(@contract_staff)
    click_on "Destroy this contract staff", match: :first

    assert_text "Contract staff was successfully destroyed"
  end
end
