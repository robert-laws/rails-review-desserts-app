require 'test_helper'

class DessertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get desserts_index_url
    assert_response :success
  end

  test "should get show" do
    get desserts_show_url
    assert_response :success
  end

  test "should get new" do
    get desserts_new_url
    assert_response :success
  end

  test "should get edit" do
    get desserts_edit_url
    assert_response :success
  end

end
