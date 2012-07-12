require 'test_helper'

class HomecolsControllerTest < ActionController::TestCase
  setup do
    @homecol = homecols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homecols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homecol" do
    assert_difference('Homecol.count') do
      post :create, homecol: @homecol.attributes
    end

    assert_redirected_to homecol_path(assigns(:homecol))
  end

  test "should show homecol" do
    get :show, id: @homecol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homecol
    assert_response :success
  end

  test "should update homecol" do
    put :update, id: @homecol, homecol: @homecol.attributes
    assert_redirected_to homecol_path(assigns(:homecol))
  end

  test "should destroy homecol" do
    assert_difference('Homecol.count', -1) do
      delete :destroy, id: @homecol
    end

    assert_redirected_to homecols_path
  end
end
