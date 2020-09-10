require "application_system_test_case"

class ShortPutsTest < ApplicationSystemTestCase
  setup do
    @short_put = short_puts(:one)
  end

  test "visiting the index" do
    visit short_puts_url
    assert_selector "h1", text: "Short Puts"
  end

  test "creating a Short put" do
    visit short_puts_url
    click_on "New Short Put"

    click_on "Create Short put"

    assert_text "Short put was successfully created"
    click_on "Back"
  end

  test "updating a Short put" do
    visit short_puts_url
    click_on "Edit", match: :first

    click_on "Update Short put"

    assert_text "Short put was successfully updated"
    click_on "Back"
  end

  test "destroying a Short put" do
    visit short_puts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short put was successfully destroyed"
  end
end
