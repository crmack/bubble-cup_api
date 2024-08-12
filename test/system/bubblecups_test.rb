require "application_system_test_case"

class BubblecupsTest < ApplicationSystemTestCase
  setup do
    @bubblecup = bubblecups(:one)
  end

  test "visiting the index" do
    visit bubblecups_url
    assert_selector "h1", text: "Bubblecups"
  end

  test "should create bubblecup" do
    visit bubblecups_url
    click_on "New bubblecup"

    fill_in "Name", with: @bubblecup.name
    fill_in "Year", with: @bubblecup.year
    click_on "Create Bubblecup"

    assert_text "Bubblecup was successfully created"
    click_on "Back"
  end

  test "should update Bubblecup" do
    visit bubblecup_url(@bubblecup)
    click_on "Edit this bubblecup", match: :first

    fill_in "Name", with: @bubblecup.name
    fill_in "Year", with: @bubblecup.year
    click_on "Update Bubblecup"

    assert_text "Bubblecup was successfully updated"
    click_on "Back"
  end

  test "should destroy Bubblecup" do
    visit bubblecup_url(@bubblecup)
    click_on "Destroy this bubblecup", match: :first

    assert_text "Bubblecup was successfully destroyed"
  end
end
