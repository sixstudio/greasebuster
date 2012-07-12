require 'test_helper'

class Admin::ContactcolsControllerTest < ActionController::TestCase
  setup do
    @admin_contactcol = admin_contactcols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_contactcols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_contactcol" do
    assert_difference('Admin::Contactcol.count') do
      post :create, admin_contactcol: @admin_contactcol.attributes
    end

    assert_redirected_to admin_contactcol_path(assigns(:admin_contactcol))
  end

  test "should show admin_contactcol" do
    get :show, id: @admin_contactcol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_contactcol
    assert_response :success
  end

  test "should update admin_contactcol" do
    put :update, id: @admin_contactcol, admin_contactcol: @admin_contactcol.attributes
    assert_redirected_to admin_contactcol_path(assigns(:admin_contactcol))
  end

  test "should destroy admin_contactcol" do
    assert_difference('Admin::Contactcol.count', -1) do
      delete :destroy, id: @admin_contactcol
    end

    assert_redirected_to admin_contactcols_path
  end
end
