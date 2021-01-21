require "test_helper"

class SchuelersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schuelers_index_url
    assert_response :success
  end

  test "should get new" do
    get schuelers_new_url
    assert_response :success
  end
end
