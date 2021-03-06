require "application_system_test_case"

class ApprovalsTest < ApplicationSystemTestCase
  setup do
    @approval = approvals(:one)
  end

  test "visiting the index" do
    visit approvals_url
    assert_selector "h1", text: "Approvals"
  end

  test "creating a Approval" do
    visit approvals_url
    click_on "New Approval"

    fill_in "Donation", with: @approval.donation_id
    fill_in "Notes", with: @approval.notes
    fill_in "Status", with: @approval.status
    fill_in "Teacher", with: @approval.teacher_id
    fill_in "Version", with: @approval.version
    click_on "Create Approval"

    assert_text "Approval was successfully created"
    click_on "Back"
  end

  test "updating a Approval" do
    visit approvals_url
    click_on "Edit", match: :first

    fill_in "Donation", with: @approval.donation_id
    fill_in "Notes", with: @approval.notes
    fill_in "Status", with: @approval.status
    fill_in "Teacher", with: @approval.teacher_id
    fill_in "Version", with: @approval.version
    click_on "Update Approval"

    assert_text "Approval was successfully updated"
    click_on "Back"
  end

  test "destroying a Approval" do
    visit approvals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Approval was successfully destroyed"
  end
end
