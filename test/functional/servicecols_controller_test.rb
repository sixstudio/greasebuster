require 'test_helper'

class ServicecolsControllerTest < ActionController::TestCase
  setup do
    @servicecol = servicecols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicecols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicecol" do
    assert_difference('Servicecol.count') do
      post :create, servicecol: @servicecol.attributes
    end

    assert_redirected_to servicecol_path(assigns(:servicecol))
  end

  test "should show servicecol" do
    get :show, id: @servicecol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicecol
    assert_response :success
  end

  test "should update servicecol" do
    put :update, id: @servicecol, servicecol: @servicecol.attributes
    assert_redirected_to servicecol_path(assigns(:servicecol))
  end

  test "should destroy servicecol" do
    assert_difference('Servicecol.count', -1) do
      delete :destroy, id: @servicecol
    end

    assert_redirected_to servicecols_path
  end
end
