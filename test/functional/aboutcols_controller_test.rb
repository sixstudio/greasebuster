require 'test_helper'

class AboutcolsControllerTest < ActionController::TestCase
  setup do
    @aboutcol = aboutcols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aboutcols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aboutcol" do
    assert_difference('Aboutcol.count') do
      post :create, aboutcol: @aboutcol.attributes
    end

    assert_redirected_to aboutcol_path(assigns(:aboutcol))
  end

  test "should show aboutcol" do
    get :show, id: @aboutcol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aboutcol
    assert_response :success
  end

  test "should update aboutcol" do
    put :update, id: @aboutcol, aboutcol: @aboutcol.attributes
    assert_redirected_to aboutcol_path(assigns(:aboutcol))
  end

  test "should destroy aboutcol" do
    assert_difference('Aboutcol.count', -1) do
      delete :destroy, id: @aboutcol
    end

    assert_redirected_to aboutcols_path
  end
end
