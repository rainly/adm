require 'test_helper'

class AdZonesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_zone" do
    assert_difference('AdZone.count') do
      post :create, :ad_zone => { }
    end

    assert_redirected_to ad_zone_path(assigns(:ad_zone))
  end

  test "should show ad_zone" do
    get :show, :id => ad_zones(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_zones(:one).to_param
    assert_response :success
  end

  test "should update ad_zone" do
    put :update, :id => ad_zones(:one).to_param, :ad_zone => { }
    assert_redirected_to ad_zone_path(assigns(:ad_zone))
  end

  test "should destroy ad_zone" do
    assert_difference('AdZone.count', -1) do
      delete :destroy, :id => ad_zones(:one).to_param
    end

    assert_redirected_to ad_zones_path
  end
end
