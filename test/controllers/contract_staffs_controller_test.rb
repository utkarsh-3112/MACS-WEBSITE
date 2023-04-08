require "test_helper"

class ContractStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_staff = contract_staffs(:one)
  end

  test "should get index" do
    get contract_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_staff_url
    assert_response :success
  end

  test "should create contract_staff" do
    assert_difference("ContractStaff.count") do
      post contract_staffs_url, params: { contract_staff: { designation: @contract_staff.designation, dp: @contract_staff.dp, name: @contract_staff.name, qualification: @contract_staff.qualification } }
    end

    assert_redirected_to contract_staff_url(ContractStaff.last)
  end

  test "should show contract_staff" do
    get contract_staff_url(@contract_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_staff_url(@contract_staff)
    assert_response :success
  end

  test "should update contract_staff" do
    patch contract_staff_url(@contract_staff), params: { contract_staff: { designation: @contract_staff.designation, dp: @contract_staff.dp, name: @contract_staff.name, qualification: @contract_staff.qualification } }
    assert_redirected_to contract_staff_url(@contract_staff)
  end

  test "should destroy contract_staff" do
    assert_difference("ContractStaff.count", -1) do
      delete contract_staff_url(@contract_staff)
    end

    assert_redirected_to contract_staffs_url
  end
end
