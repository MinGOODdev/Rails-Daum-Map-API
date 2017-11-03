require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get indexinpost" do
    get :indexinpost
    assert_response :success
  end

end
