require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get create," do
    get books_create,_url
    assert_response :success
  end

  test "should get index," do
    get books_index,_url
    assert_response :success
  end

  test "should get show," do
    get books_show,_url
    assert_response :success
  end

  test "should get destroy" do
    get books_destroy_url
    assert_response :success
  end
end
