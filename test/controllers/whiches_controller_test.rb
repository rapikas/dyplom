require 'test_helper'

class WhichesControllerTest < ActionController::TestCase
  setup do
    @which = whiches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whiches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create which" do
    assert_difference('Which.count') do
      post :create, which: { description: @which.description, name: @which.name }
    end

    assert_redirected_to which_path(assigns(:which))
  end

  test "should show which" do
    get :show, id: @which
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @which
    assert_response :success
  end

  test "should update which" do
    patch :update, id: @which, which: { description: @which.description, name: @which.name }
    assert_redirected_to which_path(assigns(:which))
  end

  test "should destroy which" do
    assert_difference('Which.count', -1) do
      delete :destroy, id: @which
    end

    assert_redirected_to whiches_path
  end
end
