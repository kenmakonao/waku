require 'test_helper'

class User::AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_abouts_show_url
    assert_response :success
  end

end
