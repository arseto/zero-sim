require 'test_helper'

class ReceivingDetailsControllerTest < ActionController::TestCase
  setup do
    @receiving_detail = receiving_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receiving_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receiving_detail" do
    assert_difference('ReceivingDetail.count') do
      post :create, receiving_detail: { qty: @receiving_detail.qty, receiving_id: @receiving_detail.receiving_id, sku_id: @receiving_detail.sku_id, subtotal_price: @receiving_detail.subtotal_price, unit_price: @receiving_detail.unit_price }
    end

    assert_redirected_to receiving_detail_path(assigns(:receiving_detail))
  end

  test "should show receiving_detail" do
    get :show, id: @receiving_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receiving_detail
    assert_response :success
  end

  test "should update receiving_detail" do
    patch :update, id: @receiving_detail, receiving_detail: { qty: @receiving_detail.qty, receiving_id: @receiving_detail.receiving_id, sku_id: @receiving_detail.sku_id, subtotal_price: @receiving_detail.subtotal_price, unit_price: @receiving_detail.unit_price }
    assert_redirected_to receiving_detail_path(assigns(:receiving_detail))
  end

  test "should destroy receiving_detail" do
    assert_difference('ReceivingDetail.count', -1) do
      delete :destroy, id: @receiving_detail
    end

    assert_redirected_to receiving_details_path
  end
end
