require 'test_helper'

class BelongsTosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @belongs_to = belongs_tos(:one)
  end

  test "should get index" do
    get belongs_tos_url
    assert_response :success
  end

  test "should get new" do
    get new_belongs_to_url
    assert_response :success
  end

  test "should create belongs_to" do
    assert_difference('BelongsTo.count') do
      post belongs_tos_url, params: { belongs_to: { student_id: @belongs_to.student_id, user_id: @belongs_to.user_id } }
    end

    assert_redirected_to belongs_to_url(BelongsTo.last)
  end

  test "should show belongs_to" do
    get belongs_to_url(@belongs_to)
    assert_response :success
  end

  test "should get edit" do
    get edit_belongs_to_url(@belongs_to)
    assert_response :success
  end

  test "should update belongs_to" do
    patch belongs_to_url(@belongs_to), params: { belongs_to: { student_id: @belongs_to.student_id, user_id: @belongs_to.user_id } }
    assert_redirected_to belongs_to_url(@belongs_to)
  end

  test "should destroy belongs_to" do
    assert_difference('BelongsTo.count', -1) do
      delete belongs_to_url(@belongs_to)
    end

    assert_redirected_to belongs_tos_url
  end
end
