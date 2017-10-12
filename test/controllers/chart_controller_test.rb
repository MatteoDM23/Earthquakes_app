require 'test_helper'

class ChartControllerTest < ActionDispatch::IntegrationTest
  test "should get time" do
    get chart_time_url
    assert_response :success
  end

  test "should get feed" do
    get chart_feed_url
    assert_response :success
  end

end
