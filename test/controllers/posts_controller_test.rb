require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get home" do
    get posts_home_url
    assert_response :success
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get posts_edit_url
    assert_response :success
  end

  test "should get _header" do
    get posts__header_url
    assert_response :success
  end

  test "should get _footer" do
    get posts__footer_url
    assert_response :success
  end
end
