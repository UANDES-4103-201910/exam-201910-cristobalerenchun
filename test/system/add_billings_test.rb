require "application_system_test_case"

class AddBillingsTest < ApplicationSystemTestCase
  setup do
    @add_billing = add_billings(:one)
  end

  test "visiting the index" do
    visit add_billings_url
    assert_selector "h1", text: "Add Billings"
  end

  test "creating a Add billing" do
    visit add_billings_url
    click_on "New Add Billing"

    fill_in "Addline1", with: @add_billing.addline1
    fill_in "Addline2", with: @add_billing.addline2
    fill_in "City", with: @add_billing.city
    fill_in "Country", with: @add_billing.country
    fill_in "Order", with: @add_billing.order_id
    fill_in "Phone", with: @add_billing.phone
    fill_in "User", with: @add_billing.user_id
    fill_in "Zipcode", with: @add_billing.zipcode
    click_on "Create Add billing"

    assert_text "Add billing was successfully created"
    click_on "Back"
  end

  test "updating a Add billing" do
    visit add_billings_url
    click_on "Edit", match: :first

    fill_in "Addline1", with: @add_billing.addline1
    fill_in "Addline2", with: @add_billing.addline2
    fill_in "City", with: @add_billing.city
    fill_in "Country", with: @add_billing.country
    fill_in "Order", with: @add_billing.order_id
    fill_in "Phone", with: @add_billing.phone
    fill_in "User", with: @add_billing.user_id
    fill_in "Zipcode", with: @add_billing.zipcode
    click_on "Update Add billing"

    assert_text "Add billing was successfully updated"
    click_on "Back"
  end

  test "destroying a Add billing" do
    visit add_billings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add billing was successfully destroyed"
  end
end
