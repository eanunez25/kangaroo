require "application_system_test_case"

class BullPutSpreadsTest < ApplicationSystemTestCase
  setup do
    @bull_put_spread = bull_put_spreads(:one)
  end

  test "visiting the index" do
    visit bull_put_spreads_url
    assert_selector "h1", text: "Bull Put Spreads"
  end

  test "creating a Bull put spread" do
    visit bull_put_spreads_url
    click_on "New Bull Put Spread"

    fill_in "Expiration", with: @bull_put_spread.expiration
    fill_in "Floor1", with: @bull_put_spread.floor1
    fill_in "Floor2", with: @bull_put_spread.floor2
    fill_in "Strike", with: @bull_put_spread.strike
    click_on "Create Bull put spread"

    assert_text "Bull put spread was successfully created"
    click_on "Back"
  end

  test "updating a Bull put spread" do
    visit bull_put_spreads_url
    click_on "Edit", match: :first

    fill_in "Expiration", with: @bull_put_spread.expiration
    fill_in "Floor1", with: @bull_put_spread.floor1
    fill_in "Floor2", with: @bull_put_spread.floor2
    fill_in "Strike", with: @bull_put_spread.strike
    click_on "Update Bull put spread"

    assert_text "Bull put spread was successfully updated"
    click_on "Back"
  end

  test "destroying a Bull put spread" do
    visit bull_put_spreads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bull put spread was successfully destroyed"
  end
end
