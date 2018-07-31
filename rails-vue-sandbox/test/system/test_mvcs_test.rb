require "application_system_test_case"

class TestMvcsTest < ApplicationSystemTestCase
  setup do
    @test_mvc = test_mvcs(:one)
  end

  test "visiting the index" do
    visit test_mvcs_url
    assert_selector "h1", text: "Test Mvcs"
  end

  test "creating a Test mvc" do
    visit test_mvcs_url
    click_on "New Test Mvc"

    fill_in "Content", with: @test_mvc.content
    fill_in "Text", with: @test_mvc.text
    click_on "Create Test mvc"

    assert_text "Test mvc was successfully created"
    click_on "Back"
  end

  test "updating a Test mvc" do
    visit test_mvcs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @test_mvc.content
    fill_in "Text", with: @test_mvc.text
    click_on "Update Test mvc"

    assert_text "Test mvc was successfully updated"
    click_on "Back"
  end

  test "destroying a Test mvc" do
    visit test_mvcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test mvc was successfully destroyed"
  end
end
