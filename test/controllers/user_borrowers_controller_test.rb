require 'test_helper'

class UserBorrowersControllerTest < ActionController::TestCase
  setup do
    @user_borrower = user_borrowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_borrowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_borrower" do
    assert_difference('UserBorrower.count') do
      post :create, user_borrower: { identity_no: @user_borrower.identity_no, identity_type_id: @user_borrower.identity_type_id, name: @user_borrower.name, registered_date: @user_borrower.registered_date, status: @user_borrower.status }
    end

    assert_redirected_to user_borrower_path(assigns(:user_borrower))
  end

  test "should show user_borrower" do
    get :show, id: @user_borrower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_borrower
    assert_response :success
  end

  test "should update user_borrower" do
    patch :update, id: @user_borrower, user_borrower: { identity_no: @user_borrower.identity_no, identity_type_id: @user_borrower.identity_type_id, name: @user_borrower.name, registered_date: @user_borrower.registered_date, status: @user_borrower.status }
    assert_redirected_to user_borrower_path(assigns(:user_borrower))
  end

  test "should destroy user_borrower" do
    assert_difference('UserBorrower.count', -1) do
      delete :destroy, id: @user_borrower
    end

    assert_redirected_to user_borrowers_path
  end
end
