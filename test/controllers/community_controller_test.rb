require 'test_helper'

class CommunityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get community_index_url
    assert_response :success
  end

  test "should get show" do
    get community_show_url
    assert_response :success
  end

  test "should get edit" do
    get community_edit_url
    assert_response :success
  end

  test "should get new" do
    get community_new_url
    assert_response :success
  end

end
