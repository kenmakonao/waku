require 'test_helper'

class User::FavritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_favrites_index_url
    assert_response :success
  end

end
