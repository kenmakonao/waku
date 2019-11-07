require 'test_helper'

class User::NicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_nices_index_url
    assert_response :success
  end

end
