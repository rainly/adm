require 'test_helper'

class AdZoneTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_zone_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_zone_type" do
    assert_difference('AdZoneType.count') do
      post :create, :ad_zone_type => { }
    end

    assert_redirected_to ad_zone_type_path(assigns(:ad_zone_type))
  end

  test "should show ad_zone_type" do
    get :show, :id => ad_zone_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_zone_types(:one).to_param
    assert_response :success
  end

  test "should update ad_zone_type" do
    put :update, :id => ad_zone_types(:one).to_param, :ad_zone_type => { }
    assert_redirected_to ad_zone_type_path(assigns(:ad_zone_type))
  end

  test "should destroy ad_zone_type" do
    assert_difference('AdZoneType.count', -1) do
      delete :destroy, :id => ad_zone_types(:one).to_param
    end

    assert_redirected_to ad_zone_types_path
  end
end
