require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get activities_Index_url
    assert_response :success
  end

  test "should get show" do
    get activities_show_url
    assert_response :success
  end
end
