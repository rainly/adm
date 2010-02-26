require 'test_helper'

class AdvertiserInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertiser_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertiser_info" do
    assert_difference('AdvertiserInfo.count') do
      post :create, :advertiser_info => { }
    end

    assert_redirected_to advertiser_info_path(assigns(:advertiser_info))
  end

  test "should show advertiser_info" do
    get :show, :id => advertiser_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => advertiser_infos(:one).to_param
    assert_response :success
  end

  test "should update advertiser_info" do
    put :update, :id => advertiser_infos(:one).to_param, :advertiser_info => { }
    assert_redirected_to advertiser_info_path(assigns(:advertiser_info))
  end

  test "should destroy advertiser_info" do
    assert_difference('AdvertiserInfo.count', -1) do
      delete :destroy, :id => advertiser_infos(:one).to_param
    end

    assert_redirected_to advertiser_infos_path
  end
end
