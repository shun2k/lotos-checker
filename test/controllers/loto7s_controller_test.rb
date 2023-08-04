require "test_helper"

class Loto7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loto7 = loto7s(:one)
  end

  test "should get index" do
    get loto7s_url
    assert_response :success
  end

  test "should get new" do
    get new_loto7_url
    assert_response :success
  end

  test "should create loto7" do
    assert_difference("Loto7.count") do
      post loto7s_url, params: { loto7: { announcement: @loto7.announcement, bonusfirst: @loto7.bonusfirst, bonussecond: @loto7.bonussecond, fifth: @loto7.fifth, fifthcounts: @loto7.fifthcounts, first: @loto7.first, firstcounts: @loto7.firstcounts, forth: @loto7.forth, forthcounts: @loto7.forthcounts, second: @loto7.second, secondcounts: @loto7.secondcounts, seventh: @loto7.seventh, sixth: @loto7.sixth, sixthcounts: @loto7.sixthcounts, third: @loto7.third, thirdcounts: @loto7.thirdcounts, times: @loto7.times } }
    end

    assert_redirected_to loto7_url(Loto7.last)
  end

  test "should show loto7" do
    get loto7_url(@loto7)
    assert_response :success
  end

  test "should get edit" do
    get edit_loto7_url(@loto7)
    assert_response :success
  end

  test "should update loto7" do
    patch loto7_url(@loto7), params: { loto7: { announcement: @loto7.announcement, bonusfirst: @loto7.bonusfirst, bonussecond: @loto7.bonussecond, fifth: @loto7.fifth, fifthcounts: @loto7.fifthcounts, first: @loto7.first, firstcounts: @loto7.firstcounts, forth: @loto7.forth, forthcounts: @loto7.forthcounts, second: @loto7.second, secondcounts: @loto7.secondcounts, seventh: @loto7.seventh, sixth: @loto7.sixth, sixthcounts: @loto7.sixthcounts, third: @loto7.third, thirdcounts: @loto7.thirdcounts, times: @loto7.times } }
    assert_redirected_to loto7_url(@loto7)
  end

  test "should destroy loto7" do
    assert_difference("Loto7.count", -1) do
      delete loto7_url(@loto7)
    end

    assert_redirected_to loto7s_url
  end
end
