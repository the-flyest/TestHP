require 'test_helper'

class RatingControllerTest < ActionController::TestCase
  test "should get rating_page" do
    get :rating_page
    assert_response :success
  end

end
