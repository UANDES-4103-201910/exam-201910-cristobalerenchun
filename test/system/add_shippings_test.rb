require "application_system_test_case"

class AddShippingsTest < ApplicationSystemTestCase
  setup do
    @add_shipping = add_shippings(:one)
  end

  test "visiting the index" do
    visit add_shippings_url
    assert_selector "h1", text: "Add Shippings"
  end

  test "creating a Add shipping" do
    visit add_shippings_url
    click_on "New Add Shipping"

    fill_in "Addline1", with: @add_shipping.addline1
    fill_in "Addline2", with: @add_shipping.addline2
    fill_in "City", with: @add_shipping.city
    fill_in "Country", with: @add_shipping.country
    fill_in "Order", with: @add_shipping.order_id
    fill_in "Phone", with: @add_shipping.phone
    fill_in "User", with: @add_shipping.user_id
    fill_in "Zipcode", with: @add_shipping.zipcode
    click_on "Create Add shipping"

    assert_text "Add shipping was successfully created"
    click_on "Back"
  end

  test "updating a Add shipping" do
    visit add_shippings_url
    click_on "Edit", match: :first

    fill_in "Addline1", with: @add_shipping.addline1
    fill_in "Addline2", with: @add_shipping.addline2
    fill_in "City", with: @add_shipping.city
    fill_in "Country", with: @add_shipping.country
    fill_in "Order", with: @add_shipping.order_id
    fill_in "Phone", with: @add_shipping.phone
    fill_in "User", with: @add_shipping.user_id
    fill_in "Zipcode", with: @add_shipping.zipcode
    click_on "Update Add shipping"

    assert_text "Add shipping was successfully updated"
    click_on "Back"
  end

  test "destroying a Add shipping" do
    visit add_shippings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add shipping was successfully destroyed"
  end
end
