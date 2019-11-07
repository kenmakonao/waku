require 'test_helper'

class User::ContinentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_continents_index_url
    assert_response :success
  end

  test "should get show" do
    get user_continents_show_url
    assert_response :success
  end

  test "should get country" do
    get user_continents_country_url
    assert_response :success
  end

end
