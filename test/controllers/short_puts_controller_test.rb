require 'test_helper'

class ShortPutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_put = short_puts(:one)
  end

  test "should get index" do
    get short_puts_url
    assert_response :success
  end

  test "should get new" do
    get new_short_put_url
    assert_response :success
  end

  test "should create short_put" do
    assert_difference('ShortPut.count') do
      post short_puts_url, params: { short_put: {  } }
    end

    assert_redirected_to short_put_url(ShortPut.last)
  end

  test "should show short_put" do
    get short_put_url(@short_put)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_put_url(@short_put)
    assert_response :success
  end

  test "should update short_put" do
    patch short_put_url(@short_put), params: { short_put: {  } }
    assert_redirected_to short_put_url(@short_put)
  end

  test "should destroy short_put" do
    assert_difference('ShortPut.count', -1) do
      delete short_put_url(@short_put)
    end

    assert_redirected_to short_puts_url
  end
end
