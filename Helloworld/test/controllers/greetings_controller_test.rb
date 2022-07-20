require "test_helper"

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get helloAction" do
    get greetings_helloAction_url
    assert_response :success
  end
end
