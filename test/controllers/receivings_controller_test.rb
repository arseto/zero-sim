require 'test_helper'

class ReceivingsControllerTest < ActionController::TestCase
  setup do
    @receiving = receivings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receivings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receiving" do
    assert_difference('Receiving.count') do
      post :create, receiving: { doc_no: @receiving.doc_no, receiving_date: @receiving.receiving_date, ref_doc_do: @receiving.ref_doc_do }
    end

    assert_redirected_to receiving_path(assigns(:receiving))
  end

  test "should show receiving" do
    get :show, id: @receiving
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receiving
    assert_response :success
  end

  test "should update receiving" do
    patch :update, id: @receiving, receiving: { doc_no: @receiving.doc_no, receiving_date: @receiving.receiving_date, ref_doc_do: @receiving.ref_doc_do }
    assert_redirected_to receiving_path(assigns(:receiving))
  end

  test "should destroy receiving" do
    assert_difference('Receiving.count', -1) do
      delete :destroy, id: @receiving
    end

    assert_redirected_to receivings_path
  end
end
