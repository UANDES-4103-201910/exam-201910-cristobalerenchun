require 'test_helper'

class AddBillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_billing = add_billings(:one)
  end

  test "should get index" do
    get add_billings_url
    assert_response :success
  end

  test "should get new" do
    get new_add_billing_url
    assert_response :success
  end

  test "should create add_billing" do
    assert_difference('AddBilling.count') do
      post add_billings_url, params: { add_billing: { addline1: @add_billing.addline1, addline2: @add_billing.addline2, city: @add_billing.city, country: @add_billing.country, order_id: @add_billing.order_id, phone: @add_billing.phone, user_id: @add_billing.user_id, zipcode: @add_billing.zipcode } }
    end

    assert_redirected_to add_billing_url(AddBilling.last)
  end

  test "should show add_billing" do
    get add_billing_url(@add_billing)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_billing_url(@add_billing)
    assert_response :success
  end

  test "should update add_billing" do
    patch add_billing_url(@add_billing), params: { add_billing: { addline1: @add_billing.addline1, addline2: @add_billing.addline2, city: @add_billing.city, country: @add_billing.country, order_id: @add_billing.order_id, phone: @add_billing.phone, user_id: @add_billing.user_id, zipcode: @add_billing.zipcode } }
    assert_redirected_to add_billing_url(@add_billing)
  end

  test "should destroy add_billing" do
    assert_difference('AddBilling.count', -1) do
      delete add_billing_url(@add_billing)
    end

    assert_redirected_to add_billings_url
  end
end
