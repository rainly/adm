require 'test_helper'

class ChargeCpmsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charge_cpms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charge_cpm" do
    assert_difference('ChargeCpm.count') do
      post :create, :charge_cpm => { }
    end

    assert_redirected_to charge_cpm_path(assigns(:charge_cpm))
  end

  test "should show charge_cpm" do
    get :show, :id => charge_cpms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => charge_cpms(:one).to_param
    assert_response :success
  end

  test "should update charge_cpm" do
    put :update, :id => charge_cpms(:one).to_param, :charge_cpm => { }
    assert_redirected_to charge_cpm_path(assigns(:charge_cpm))
  end

  test "should destroy charge_cpm" do
    assert_difference('ChargeCpm.count', -1) do
      delete :destroy, :id => charge_cpms(:one).to_param
    end

    assert_redirected_to charge_cpms_path
  end
end
