require "application_system_test_case"

class EventInstancesTest < ApplicationSystemTestCase
  setup do
    @event_instance = event_instances(:one)
  end

  test "visiting the index" do
    visit event_instances_url
    assert_selector "h1", text: "Event instances"
  end

  test "should create event instance" do
    visit event_instances_url
    click_on "New event instance"

    fill_in "Event", with: @event_instance.event_id
    check "Is tiebreaker" if @event_instance.is_tiebreaker
    click_on "Create Event instance"

    assert_text "Event instance was successfully created"
    click_on "Back"
  end

  test "should update Event instance" do
    visit event_instance_url(@event_instance)
    click_on "Edit this event instance", match: :first

    fill_in "Event", with: @event_instance.event_id
    check "Is tiebreaker" if @event_instance.is_tiebreaker
    click_on "Update Event instance"

    assert_text "Event instance was successfully updated"
    click_on "Back"
  end

  test "should destroy Event instance" do
    visit event_instance_url(@event_instance)
    click_on "Destroy this event instance", match: :first

    assert_text "Event instance was successfully destroyed"
  end
end
