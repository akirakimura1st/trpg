require 'test_helper'

class SessionRecruitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get session_recruitments_index_url
    assert_response :success
  end

  test "should get show" do
    get session_recruitments_show_url
    assert_response :success
  end

  test "should get edit" do
    get session_recruitments_edit_url
    assert_response :success
  end

  test "should get new" do
    get session_recruitments_new_url
    assert_response :success
  end

end
