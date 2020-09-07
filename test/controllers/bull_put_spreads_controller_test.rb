require 'test_helper'

class BullPutSpreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bull_put_spread = bull_put_spreads(:one)
  end

  test "should get index" do
    get bull_put_spreads_url
    assert_response :success
  end

  test "should get new" do
    get new_bull_put_spread_url
    assert_response :success
  end

  test "should create bull_put_spread" do
    assert_difference('BullPutSpread.count') do
      post bull_put_spreads_url, params: { bull_put_spread: { expiration: @bull_put_spread.expiration, floor1: @bull_put_spread.floor1, floor2: @bull_put_spread.floor2, strike: @bull_put_spread.strike } }
    end

    assert_redirected_to bull_put_spread_url(BullPutSpread.last)
  end

  test "should show bull_put_spread" do
    get bull_put_spread_url(@bull_put_spread)
    assert_response :success
  end

  test "should get edit" do
    get edit_bull_put_spread_url(@bull_put_spread)
    assert_response :success
  end

  test "should update bull_put_spread" do
    patch bull_put_spread_url(@bull_put_spread), params: { bull_put_spread: { expiration: @bull_put_spread.expiration, floor1: @bull_put_spread.floor1, floor2: @bull_put_spread.floor2, strike: @bull_put_spread.strike } }
    assert_redirected_to bull_put_spread_url(@bull_put_spread)
  end

  test "should destroy bull_put_spread" do
    assert_difference('BullPutSpread.count', -1) do
      delete bull_put_spread_url(@bull_put_spread)
    end

    assert_redirected_to bull_put_spreads_url
  end
end
