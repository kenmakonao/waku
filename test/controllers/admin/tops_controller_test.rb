require 'test_helper'

class Admin::TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_tops_index_url
    assert_response :success
  end

end
