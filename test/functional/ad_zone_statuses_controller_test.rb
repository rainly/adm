require 'test_helper'

class AdZoneStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_zone_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_zone_status" do
    assert_difference('AdZoneStatus.count') do
      post :create, :ad_zone_status => { }
    end

    assert_redirected_to ad_zone_status_path(assigns(:ad_zone_status))
  end

  test "should show ad_zone_status" do
    get :show, :id => ad_zone_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_zone_statuses(:one).to_param
    assert_response :success
  end

  test "should update ad_zone_status" do
    put :update, :id => ad_zone_statuses(:one).to_param, :ad_zone_status => { }
    assert_redirected_to ad_zone_status_path(assigns(:ad_zone_status))
  end

  test "should destroy ad_zone_status" do
    assert_difference('AdZoneStatus.count', -1) do
      delete :destroy, :id => ad_zone_statuses(:one).to_param
    end

    assert_redirected_to ad_zone_statuses_path
  end
end
