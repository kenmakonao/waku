require 'test_helper'

class User::AriclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_aricles_index_url
    assert_response :success
  end

  test "should get show" do
    get user_aricles_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_aricles_edit_url
    assert_response :success
  end

  test "should get new" do
    get user_aricles_new_url
    assert_response :success
  end

end
