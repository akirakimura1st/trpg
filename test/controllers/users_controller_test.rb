require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get mypage" do
    get users_mypage_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get friends" do
    get users_friends_url
    assert_response :success
  end

end