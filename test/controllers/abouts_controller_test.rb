require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get abouts_home_url
    assert_response :success
  end

end
