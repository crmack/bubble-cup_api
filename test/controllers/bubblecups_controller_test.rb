require "test_helper"

class BubblecupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bubblecup = bubblecups(:one)
  end

  test "should get index" do
    get bubblecups_url
    assert_response :success
  end

  test "should get new" do
    get new_bubblecup_url
    assert_response :success
  end

  test "should create bubblecup" do
    assert_difference("Bubblecup.count") do
      post bubblecups_url, params: { bubblecup: { name: @bubblecup.name, year: @bubblecup.year } }
    end

    assert_redirected_to bubblecup_url(Bubblecup.last)
  end

  test "should show bubblecup" do
    get bubblecup_url(@bubblecup)
    assert_response :success
  end

  test "should get edit" do
    get edit_bubblecup_url(@bubblecup)
    assert_response :success
  end

  test "should update bubblecup" do
    patch bubblecup_url(@bubblecup), params: { bubblecup: { name: @bubblecup.name, year: @bubblecup.year } }
    assert_redirected_to bubblecup_url(@bubblecup)
  end

  test "should destroy bubblecup" do
    assert_difference("Bubblecup.count", -1) do
      delete bubblecup_url(@bubblecup)
    end

    assert_redirected_to bubblecups_url
  end
end
