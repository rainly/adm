require 'test_helper'

class ChargeCptsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charge_cpts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charge_cpt" do
    assert_difference('ChargeCpt.count') do
      post :create, :charge_cpt => { }
    end

    assert_redirected_to charge_cpt_path(assigns(:charge_cpt))
  end

  test "should show charge_cpt" do
    get :show, :id => charge_cpts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => charge_cpts(:one).to_param
    assert_response :success
  end

  test "should update charge_cpt" do
    put :update, :id => charge_cpts(:one).to_param, :charge_cpt => { }
    assert_redirected_to charge_cpt_path(assigns(:charge_cpt))
  end

  test "should destroy charge_cpt" do
    assert_difference('ChargeCpt.count', -1) do
      delete :destroy, :id => charge_cpts(:one).to_param
    end

    assert_redirected_to charge_cpts_path
  end
end
