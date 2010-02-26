require 'test_helper'

class OrderStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_status" do
    assert_difference('OrderStatus.count') do
      post :create, :order_status => { }
    end

    assert_redirected_to order_status_path(assigns(:order_status))
  end

  test "should show order_status" do
    get :show, :id => order_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => order_statuses(:one).to_param
    assert_response :success
  end

  test "should update order_status" do
    put :update, :id => order_statuses(:one).to_param, :order_status => { }
    assert_redirected_to order_status_path(assigns(:order_status))
  end

  test "should destroy order_status" do
    assert_difference('OrderStatus.count', -1) do
      delete :destroy, :id => order_statuses(:one).to_param
    end

    assert_redirected_to order_statuses_path
  end
end
