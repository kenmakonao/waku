require 'test_helper'

class Admin::CountrysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_countrys_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_countrys_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_countrys_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_countrys_new_url
    assert_response :success
  end

end
