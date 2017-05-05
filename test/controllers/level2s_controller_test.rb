require 'test_helper'

class Level2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level2 = level2s(:one)
  end

  test "should get index" do
    get level2s_url
    assert_response :success
  end

  test "should get new" do
    get new_level2_url
    assert_response :success
  end

  test "should create level2" do
    assert_difference('Level2.count') do
      post level2s_url, params: { level2: { name: @level2.name } }
    end

    assert_redirected_to level2_url(Level2.last)
  end

  test "should show level2" do
    get level2_url(@level2)
    assert_response :success
  end

  test "should get edit" do
    get edit_level2_url(@level2)
    assert_response :success
  end

  test "should update level2" do
    patch level2_url(@level2), params: { level2: { name: @level2.name } }
    assert_redirected_to level2_url(@level2)
  end

  test "should destroy level2" do
    assert_difference('Level2.count', -1) do
      delete level2_url(@level2)
    end

    assert_redirected_to level2s_url
  end
end
