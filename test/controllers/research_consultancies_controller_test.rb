require "test_helper"

class ResearchConsultanciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_consultancy = research_consultancies(:one)
  end

  test "should get index" do
    get research_consultancies_url
    assert_response :success
  end

  test "should get new" do
    get new_research_consultancy_url
    assert_response :success
  end

  test "should create research_consultancy" do
    assert_difference("ResearchConsultancy.count") do
      post research_consultancies_url, params: { research_consultancy: { faculty_id: @research_consultancy.faculty_id, project_name: @research_consultancy.project_name, project_type: @research_consultancy.project_type, sanctioned_amount: @research_consultancy.sanctioned_amount, status: @research_consultancy.status } }
    end

    assert_redirected_to research_consultancy_url(ResearchConsultancy.last)
  end

  test "should show research_consultancy" do
    get research_consultancy_url(@research_consultancy)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_consultancy_url(@research_consultancy)
    assert_response :success
  end

  test "should update research_consultancy" do
    patch research_consultancy_url(@research_consultancy), params: { research_consultancy: { faculty_id: @research_consultancy.faculty_id, project_name: @research_consultancy.project_name, project_type: @research_consultancy.project_type, sanctioned_amount: @research_consultancy.sanctioned_amount, status: @research_consultancy.status } }
    assert_redirected_to research_consultancy_url(@research_consultancy)
  end

  test "should destroy research_consultancy" do
    assert_difference("ResearchConsultancy.count", -1) do
      delete research_consultancy_url(@research_consultancy)
    end

    assert_redirected_to research_consultancies_url
  end
end
