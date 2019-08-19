require 'test_helper'

class GamesnewControllerTest < ActionDispatch::IntegrationTest
  test "should get score" do
    get gamesnew_score_url
    assert_response :success
  end

end
