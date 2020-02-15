require 'test_helper'

class AssignationControllerTest < ActionDispatch::IntegrationTest
  test "should get staff:references" do
    get assignation_staff:references_url
    assert_response :success
  end

  test "should get project:references" do
    get assignation_project:references_url
    assert_response :success
  end

end
