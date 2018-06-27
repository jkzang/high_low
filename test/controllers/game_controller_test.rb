require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get try" do
    get game_try_url
    assert_response :success
  end

end
