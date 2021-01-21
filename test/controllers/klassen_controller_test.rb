require "test_helper"

class KlassenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get klassen_index_url
    assert_response :success
  end

  test "should get new" do
    get klassen_new_url
    assert_response :success
  end
end
