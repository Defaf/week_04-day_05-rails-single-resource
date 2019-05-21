require "application_system_test_case"

class WizardsTest < ApplicationSystemTestCase
  setup do
    @wizard = wizards(:one)
  end

  test "visiting the index" do
    visit wizards_url
    assert_selector "h1", text: "Wizards"
  end

  test "creating a Wizard" do
    visit wizards_url
    click_on "New Wizard"

    fill_in "Fisrt name", with: @wizard.fisrt_name
    fill_in "Last name", with: @wizard.last_name
    click_on "Create Wizard"

    assert_text "Wizard was successfully created"
    click_on "Back"
  end

  test "updating a Wizard" do
    visit wizards_url
    click_on "Edit", match: :first

    fill_in "Fisrt name", with: @wizard.fisrt_name
    fill_in "Last name", with: @wizard.last_name
    click_on "Update Wizard"

    assert_text "Wizard was successfully updated"
    click_on "Back"
  end

  test "destroying a Wizard" do
    visit wizards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wizard was successfully destroyed"
  end
end
