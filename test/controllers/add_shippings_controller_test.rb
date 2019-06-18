require 'test_helper'

class AddShippingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_shipping = add_shippings(:one)
  end

  test "should get index" do
    get add_shippings_url
    assert_response :success
  end

  test "should get new" do
    get new_add_shipping_url
    assert_response :success
  end

  test "should create add_shipping" do
    assert_difference('AddShipping.count') do
      post add_shippings_url, params: { add_shipping: { addline1: @add_shipping.addline1, addline2: @add_shipping.addline2, city: @add_shipping.city, country: @add_shipping.country, order_id: @add_shipping.order_id, phone: @add_shipping.phone, user_id: @add_shipping.user_id, zipcode: @add_shipping.zipcode } }
    end

    assert_redirected_to add_shipping_url(AddShipping.last)
  end

  test "should show add_shipping" do
    get add_shipping_url(@add_shipping)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_shipping_url(@add_shipping)
    assert_response :success
  end

  test "should update add_shipping" do
    patch add_shipping_url(@add_shipping), params: { add_shipping: { addline1: @add_shipping.addline1, addline2: @add_shipping.addline2, city: @add_shipping.city, country: @add_shipping.country, order_id: @add_shipping.order_id, phone: @add_shipping.phone, user_id: @add_shipping.user_id, zipcode: @add_shipping.zipcode } }
    assert_redirected_to add_shipping_url(@add_shipping)
  end

  test "should destroy add_shipping" do
    assert_difference('AddShipping.count', -1) do
      delete add_shipping_url(@add_shipping)
    end

    assert_redirected_to add_shippings_url
  end
end
