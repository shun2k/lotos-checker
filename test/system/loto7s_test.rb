require "application_system_test_case"

class Loto7sTest < ApplicationSystemTestCase
  setup do
    @loto7 = loto7s(:one)
  end

  test "visiting the index" do
    visit loto7s_url
    assert_selector "h1", text: "Loto7s"
  end

  test "should create loto7" do
    visit loto7s_url
    click_on "New loto7"

    fill_in "Announcement", with: @loto7.announcement
    fill_in "Bonusfirst", with: @loto7.bonusfirst
    fill_in "Bonussecond", with: @loto7.bonussecond
    fill_in "Fifth", with: @loto7.fifth
    fill_in "Fifthcounts", with: @loto7.fifthcounts
    fill_in "First", with: @loto7.first
    fill_in "Firstcounts", with: @loto7.firstcounts
    fill_in "Forth", with: @loto7.forth
    fill_in "Forthcounts", with: @loto7.forthcounts
    fill_in "Second", with: @loto7.second
    fill_in "Secondcounts", with: @loto7.secondcounts
    fill_in "Seventh", with: @loto7.seventh
    fill_in "Sixth", with: @loto7.sixth
    fill_in "Sixthcounts", with: @loto7.sixthcounts
    fill_in "Third", with: @loto7.third
    fill_in "Thirdcounts", with: @loto7.thirdcounts
    fill_in "Times", with: @loto7.times
    click_on "Create Loto7"

    assert_text "Loto7 was successfully created"
    click_on "Back"
  end

  test "should update Loto7" do
    visit loto7_url(@loto7)
    click_on "Edit this loto7", match: :first

    fill_in "Announcement", with: @loto7.announcement
    fill_in "Bonusfirst", with: @loto7.bonusfirst
    fill_in "Bonussecond", with: @loto7.bonussecond
    fill_in "Fifth", with: @loto7.fifth
    fill_in "Fifthcounts", with: @loto7.fifthcounts
    fill_in "First", with: @loto7.first
    fill_in "Firstcounts", with: @loto7.firstcounts
    fill_in "Forth", with: @loto7.forth
    fill_in "Forthcounts", with: @loto7.forthcounts
    fill_in "Second", with: @loto7.second
    fill_in "Secondcounts", with: @loto7.secondcounts
    fill_in "Seventh", with: @loto7.seventh
    fill_in "Sixth", with: @loto7.sixth
    fill_in "Sixthcounts", with: @loto7.sixthcounts
    fill_in "Third", with: @loto7.third
    fill_in "Thirdcounts", with: @loto7.thirdcounts
    fill_in "Times", with: @loto7.times
    click_on "Update Loto7"

    assert_text "Loto7 was successfully updated"
    click_on "Back"
  end

  test "should destroy Loto7" do
    visit loto7_url(@loto7)
    click_on "Destroy this loto7", match: :first

    assert_text "Loto7 was successfully destroyed"
  end
end
