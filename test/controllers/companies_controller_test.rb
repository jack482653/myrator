require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should show index" do
    show companies_index_url
    assert_response :success
  end
end
