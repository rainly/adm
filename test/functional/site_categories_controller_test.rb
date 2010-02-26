require 'test_helper'

class SiteCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_category" do
    assert_difference('SiteCategory.count') do
      post :create, :site_category => { }
    end

    assert_redirected_to site_category_path(assigns(:site_category))
  end

  test "should show site_category" do
    get :show, :id => site_categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => site_categories(:one).to_param
    assert_response :success
  end

  test "should update site_category" do
    put :update, :id => site_categories(:one).to_param, :site_category => { }
    assert_redirected_to site_category_path(assigns(:site_category))
  end

  test "should destroy site_category" do
    assert_difference('SiteCategory.count', -1) do
      delete :destroy, :id => site_categories(:one).to_param
    end

    assert_redirected_to site_categories_path
  end
end
