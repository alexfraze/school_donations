require "application_system_test_case"

class BelongsTosTest < ApplicationSystemTestCase
  setup do
    @belongs_to = belongs_tos(:one)
  end

  test "visiting the index" do
    visit belongs_tos_url
    assert_selector "h1", text: "Belongs Tos"
  end

  test "creating a Belongs to" do
    visit belongs_tos_url
    click_on "New Belongs To"

    fill_in "Student", with: @belongs_to.student_id
    fill_in "User", with: @belongs_to.user_id
    click_on "Create Belongs to"

    assert_text "Belongs to was successfully created"
    click_on "Back"
  end

  test "updating a Belongs to" do
    visit belongs_tos_url
    click_on "Edit", match: :first

    fill_in "Student", with: @belongs_to.student_id
    fill_in "User", with: @belongs_to.user_id
    click_on "Update Belongs to"

    assert_text "Belongs to was successfully updated"
    click_on "Back"
  end

  test "destroying a Belongs to" do
    visit belongs_tos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Belongs to was successfully destroyed"
  end
end
