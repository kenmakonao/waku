require 'test_helper'

class User::SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_schedules_index_url
    assert_response :success
  end

  test "should get show" do
    get user_schedules_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_schedules_edit_url
    assert_response :success
  end

  test "should get new" do
    get user_schedules_new_url
    assert_response :success
  end

end
