require 'test_helper'

class AccessariesControllerTest < ActionController::TestCase
  setup do
    @accessary = accessaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessary" do
    assert_difference('Accessary.count') do
      post :create, accessary: { employee_id: @accessary.employee_id, items: @accessary.items, moniter_id: @accessary.moniter_id, system_id: @accessary.system_id }
    end

    assert_redirected_to accessary_path(assigns(:accessary))
  end

  test "should show accessary" do
    get :show, id: @accessary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessary
    assert_response :success
  end

  test "should update accessary" do
    patch :update, id: @accessary, accessary: { employee_id: @accessary.employee_id, items: @accessary.items, moniter_id: @accessary.moniter_id, system_id: @accessary.system_id }
    assert_redirected_to accessary_path(assigns(:accessary))
  end

  test "should destroy accessary" do
    assert_difference('Accessary.count', -1) do
      delete :destroy, id: @accessary
    end

    assert_redirected_to accessaries_path
  end
end
