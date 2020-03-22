require 'test_helper'

class PreventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prevent_index_url
    assert_response :success
  end

end
