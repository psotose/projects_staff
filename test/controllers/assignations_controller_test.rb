require 'test_helper'

class AssignationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get assignations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get assignations_destroy_url
    assert_response :success
  end

end
