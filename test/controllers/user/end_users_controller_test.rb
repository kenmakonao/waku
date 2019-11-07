require 'test_helper'

class User::EndUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_end_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_end_users_edit_url
    assert_response :success
  end

end
