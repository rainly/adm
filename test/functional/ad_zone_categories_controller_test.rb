require 'test_helper'

class AdZoneCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_zone_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_zone_category" do
    assert_difference('AdZoneCategory.count') do
      post :create, :ad_zone_category => { }
    end

    assert_redirected_to ad_zone_category_path(assigns(:ad_zone_category))
  end

  test "should show ad_zone_category" do
    get :show, :id => ad_zone_categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_zone_categories(:one).to_param
    assert_response :success
  end

  test "should update ad_zone_category" do
    put :update, :id => ad_zone_categories(:one).to_param, :ad_zone_category => { }
    assert_redirected_to ad_zone_category_path(assigns(:ad_zone_category))
  end

  test "should destroy ad_zone_category" do
    assert_difference('AdZoneCategory.count', -1) do
      delete :destroy, :id => ad_zone_categories(:one).to_param
    end

    assert_redirected_to ad_zone_categories_path
  end
end
