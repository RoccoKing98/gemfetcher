require "application_system_test_case"

class FileInputsTest < ApplicationSystemTestCase
  setup do
    @file_input = file_inputs(:one)
  end

  test "visiting the index" do
    visit file_inputs_url
    assert_selector "h1", text: "File inputs"
  end

  test "should create file input" do
    visit file_inputs_url
    click_on "New file input"

    click_on "Create File input"

    assert_text "File input was successfully created"
    click_on "Back"
  end

  test "should update File input" do
    visit file_input_url(@file_input)
    click_on "Edit this file input", match: :first

    click_on "Update File input"

    assert_text "File input was successfully updated"
    click_on "Back"
  end

  test "should destroy File input" do
    visit file_input_url(@file_input)
    click_on "Destroy this file input", match: :first

    assert_text "File input was successfully destroyed"
  end
end
