require "application_system_test_case"

class CatogoriesTest < ApplicationSystemTestCase
  setup do
    @catogory = catogories(:one)
  end

  test "visiting the index" do
    visit catogories_url
    assert_selector "h1", text: "Catogories"
  end

  test "creating a Catogory" do
    visit catogories_url
    click_on "New Catogory"

    click_on "Create Catogory"

    assert_text "Catogory was successfully created"
    click_on "Back"
  end

  test "updating a Catogory" do
    visit catogories_url
    click_on "Edit", match: :first

    click_on "Update Catogory"

    assert_text "Catogory was successfully updated"
    click_on "Back"
  end

  test "destroying a Catogory" do
    visit catogories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catogory was successfully destroyed"
  end
end
