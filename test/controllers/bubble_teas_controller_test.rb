require 'test_helper'

class BubbleTeasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bubble_teas_index_url
    assert_response :success
  end

  test "should get show" do
    get bubble_teas_show_url
    assert_response :success
  end

  test "should get new" do
    get bubble_teas_new_url
    assert_response :success
  end

  test "should get create" do
    get bubble_teas_create_url
    assert_response :success
  end

  test "should get edit" do
    get bubble_teas_edit_url
    assert_response :success
  end

  test "should get update" do
    get bubble_teas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bubble_teas_destroy_url
    assert_response :success
  end

end
