require "application_system_test_case"

class AnalysesTest < ApplicationSystemTestCase
  setup do
    @analysis = analyses(:one)
  end

  test "visiting the index" do
    visit analyses_url
    assert_selector "h1", text: "Analyses"
  end

  test "should create analysis" do
    visit analyses_url
    click_on "New analysis"

    fill_in "Data", with: @analysis.data
    fill_in "Times", with: @analysis.times
    click_on "Create Analysis"

    assert_text "Analysis was successfully created"
    click_on "Back"
  end

  test "should update Analysis" do
    visit analysis_url(@analysis)
    click_on "Edit this analysis", match: :first

    fill_in "Data", with: @analysis.data
    fill_in "Times", with: @analysis.times
    click_on "Update Analysis"

    assert_text "Analysis was successfully updated"
    click_on "Back"
  end

  test "should destroy Analysis" do
    visit analysis_url(@analysis)
    click_on "Destroy this analysis", match: :first

    assert_text "Analysis was successfully destroyed"
  end
end
