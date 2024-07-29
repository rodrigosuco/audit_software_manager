require "application_system_test_case"

class CostsTest < ApplicationSystemTestCase
  setup do
    @cost = costs(:one)
  end

  test "visiting the index" do
    visit costs_url
    assert_selector "h1", text: "Costs"
  end

  test "should create cost" do
    visit costs_url
    click_on "New cost"

    fill_in "Audit local", with: @cost.audit_local
    fill_in "Audit stage", with: @cost.audit_stage
    fill_in "Audit year", with: @cost.audit_year
    fill_in "Fee", with: @cost.fee
    fill_in "Man days", with: @cost.man_days
    fill_in "Md cost", with: @cost.md_cost
    fill_in "Proposal", with: @cost.proposal
    fill_in "Total cost", with: @cost.total_cost
    fill_in "Travel expenses", with: @cost.travel_expenses
    click_on "Create Cost"

    assert_text "Cost was successfully created"
    click_on "Back"
  end

  test "should update Cost" do
    visit cost_url(@cost)
    click_on "Edit this cost", match: :first

    fill_in "Audit local", with: @cost.audit_local
    fill_in "Audit stage", with: @cost.audit_stage
    fill_in "Audit year", with: @cost.audit_year
    fill_in "Fee", with: @cost.fee
    fill_in "Man days", with: @cost.man_days
    fill_in "Md cost", with: @cost.md_cost
    fill_in "Proposal", with: @cost.proposal
    fill_in "Total cost", with: @cost.total_cost
    fill_in "Travel expenses", with: @cost.travel_expenses
    click_on "Update Cost"

    assert_text "Cost was successfully updated"
    click_on "Back"
  end

  test "should destroy Cost" do
    visit cost_url(@cost)
    click_on "Destroy this cost", match: :first

    assert_text "Cost was successfully destroyed"
  end
end
