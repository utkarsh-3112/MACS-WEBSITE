require "test_helper"

class ResearchScholarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_scholar = research_scholars(:one)
  end

  test "should get index" do
    get research_scholars_url
    assert_response :success
  end

  test "should get new" do
    get new_research_scholar_url
    assert_response :success
  end

  test "should create research_scholar" do
    assert_difference("ResearchScholar.count") do
      post research_scholars_url, params: { research_scholar: { category: @research_scholar.category, dp: @research_scholar.dp, email: @research_scholar.email, name: @research_scholar.name, supervisors_id: @research_scholar.supervisors_id } }
    end

    assert_redirected_to research_scholar_url(ResearchScholar.last)
  end

  test "should show research_scholar" do
    get research_scholar_url(@research_scholar)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_scholar_url(@research_scholar)
    assert_response :success
  end

  test "should update research_scholar" do
    patch research_scholar_url(@research_scholar), params: { research_scholar: { category: @research_scholar.category, dp: @research_scholar.dp, email: @research_scholar.email, name: @research_scholar.name, supervisors_id: @research_scholar.supervisors_id } }
    assert_redirected_to research_scholar_url(@research_scholar)
  end

  test "should destroy research_scholar" do
    assert_difference("ResearchScholar.count", -1) do
      delete research_scholar_url(@research_scholar)
    end

    assert_redirected_to research_scholars_url
  end
end
