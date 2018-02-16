require 'test_helper'

class ToppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppings_index_url
    assert_response :success
  end

  test "should get show" do
    get toppings_show_url
    assert_response :success
  end

  test "should get new" do
    get toppings_new_url
    assert_response :success
  end

  test "should get edit" do
    get toppings_edit_url
    assert_response :success
  end

end
