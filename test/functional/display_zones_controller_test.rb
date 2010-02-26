require 'test_helper'

class DisplayZonesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:display_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create display_zone" do
    assert_difference('DisplayZone.count') do
      post :create, :display_zone => { }
    end

    assert_redirected_to display_zone_path(assigns(:display_zone))
  end

  test "should show display_zone" do
    get :show, :id => display_zones(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => display_zones(:one).to_param
    assert_response :success
  end

  test "should update display_zone" do
    put :update, :id => display_zones(:one).to_param, :display_zone => { }
    assert_redirected_to display_zone_path(assigns(:display_zone))
  end

  test "should destroy display_zone" do
    assert_difference('DisplayZone.count', -1) do
      delete :destroy, :id => display_zones(:one).to_param
    end

    assert_redirected_to display_zones_path
  end
end
