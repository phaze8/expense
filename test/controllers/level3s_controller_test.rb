require 'test_helper'

class Level3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level3 = level3s(:one)
  end

  test "should get index" do
    get level3s_url
    assert_response :success
  end

  test "should get new" do
    get new_level3_url
    assert_response :success
  end

  test "should create level3" do
    assert_difference('Level3.count') do
      post level3s_url, params: { level3: { code: @level3.code, level2_id: @level3.level2_id, name: @level3.name } }
    end

    assert_redirected_to level3_url(Level3.last)
  end

  test "should show level3" do
    get level3_url(@level3)
    assert_response :success
  end

  test "should get edit" do
    get edit_level3_url(@level3)
    assert_response :success
  end

  test "should update level3" do
    patch level3_url(@level3), params: { level3: { code: @level3.code, level2_id: @level3.level2_id, name: @level3.name } }
    assert_redirected_to level3_url(@level3)
  end

  test "should destroy level3" do
    assert_difference('Level3.count', -1) do
      delete level3_url(@level3)
    end

    assert_redirected_to level3s_url
  end
end
