require 'test_helper'

class XesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @x = xes(:one)
  end

  test "should get index" do
    get xes_url
    assert_response :success
  end

  test "should get new" do
    get new_x_url
    assert_response :success
  end

  test "should create x" do
    assert_difference('X.count') do
      post xes_url, params: { x: { name: @x.name } }
    end

    assert_redirected_to x_url(X.last)
  end

  test "should show x" do
    get x_url(@x)
    assert_response :success
  end

  test "should get edit" do
    get edit_x_url(@x)
    assert_response :success
  end

  test "should update x" do
    patch x_url(@x), params: { x: { name: @x.name } }
    assert_redirected_to x_url(@x)
  end

  test "should destroy x" do
    assert_difference('X.count', -1) do
      delete x_url(@x)
    end

    assert_redirected_to xes_url
  end
end
