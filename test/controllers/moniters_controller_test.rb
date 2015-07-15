require 'test_helper'

class MonitersControllerTest < ActionController::TestCase
  setup do
    @moniter = moniters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moniters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moniter" do
    assert_difference('Moniter.count') do
      post :create, moniter: { screen: @moniter.screen }
    end

    assert_redirected_to moniter_path(assigns(:moniter))
  end

  test "should show moniter" do
    get :show, id: @moniter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moniter
    assert_response :success
  end

  test "should update moniter" do
    patch :update, id: @moniter, moniter: { screen: @moniter.screen }
    assert_redirected_to moniter_path(assigns(:moniter))
  end

  test "should destroy moniter" do
    assert_difference('Moniter.count', -1) do
      delete :destroy, id: @moniter
    end

    assert_redirected_to moniters_path
  end
end
