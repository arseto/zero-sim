require 'test_helper'

class DocStatusesControllerTest < ActionController::TestCase
  setup do
    @doc_status = doc_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_status" do
    assert_difference('DocStatus.count') do
      post :create, doc_status: { name: @doc_status.name }
    end

    assert_redirected_to doc_status_path(assigns(:doc_status))
  end

  test "should show doc_status" do
    get :show, id: @doc_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doc_status
    assert_response :success
  end

  test "should update doc_status" do
    patch :update, id: @doc_status, doc_status: { name: @doc_status.name }
    assert_redirected_to doc_status_path(assigns(:doc_status))
  end

  test "should destroy doc_status" do
    assert_difference('DocStatus.count', -1) do
      delete :destroy, id: @doc_status
    end

    assert_redirected_to doc_statuses_path
  end
end
