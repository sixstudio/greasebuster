require 'test_helper'

class WhyuscolsControllerTest < ActionController::TestCase
  setup do
    @whyuscol = whyuscols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whyuscols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whyuscol" do
    assert_difference('Whyuscol.count') do
      post :create, whyuscol: @whyuscol.attributes
    end

    assert_redirected_to whyuscol_path(assigns(:whyuscol))
  end

  test "should show whyuscol" do
    get :show, id: @whyuscol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whyuscol
    assert_response :success
  end

  test "should update whyuscol" do
    put :update, id: @whyuscol, whyuscol: @whyuscol.attributes
    assert_redirected_to whyuscol_path(assigns(:whyuscol))
  end

  test "should destroy whyuscol" do
    assert_difference('Whyuscol.count', -1) do
      delete :destroy, id: @whyuscol
    end

    assert_redirected_to whyuscols_path
  end
end
