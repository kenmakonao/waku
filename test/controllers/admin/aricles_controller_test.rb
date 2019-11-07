require 'test_helper'

class Admin::AriclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_aricles_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_aricles_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_aricles_edit_url
    assert_response :success
  end

end
