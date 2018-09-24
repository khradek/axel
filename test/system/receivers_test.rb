require "application_system_test_case"

class ReceiversTest < ApplicationSystemTestCase
  setup do
    @receiver = receivers(:one)
  end

  test "visiting the index" do
    visit receivers_url
    assert_selector "h1", text: "Receivers"
  end

  test "creating a Receiver" do
    visit receivers_url
    click_on "New Receiver"

    fill_in "Name", with: @receiver.name
    fill_in "Phone Number", with: @receiver.phone_number
    fill_in "User", with: @receiver.user_id
    click_on "Create Receiver"

    assert_text "Receiver was successfully created"
    click_on "Back"
  end

  test "updating a Receiver" do
    visit receivers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @receiver.name
    fill_in "Phone Number", with: @receiver.phone_number
    fill_in "User", with: @receiver.user_id
    click_on "Update Receiver"

    assert_text "Receiver was successfully updated"
    click_on "Back"
  end

  test "destroying a Receiver" do
    visit receivers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receiver was successfully destroyed"
  end
end
