require 'test_helper'

class CthulhusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cthulhus_new_url
    assert_response :success
  end

  test "should get index" do
    get cthulhus_index_url
    assert_response :success
  end

  test "should get edit" do
    get cthulhus_edit_url
    assert_response :success
  end

  test "should get show" do
    get cthulhus_show_url
    assert_response :success
  end

end
