require 'test_helper'

class PublisherInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publisher_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publisher_info" do
    assert_difference('PublisherInfo.count') do
      post :create, :publisher_info => { }
    end

    assert_redirected_to publisher_info_path(assigns(:publisher_info))
  end

  test "should show publisher_info" do
    get :show, :id => publisher_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => publisher_infos(:one).to_param
    assert_response :success
  end

  test "should update publisher_info" do
    put :update, :id => publisher_infos(:one).to_param, :publisher_info => { }
    assert_redirected_to publisher_info_path(assigns(:publisher_info))
  end

  test "should destroy publisher_info" do
    assert_difference('PublisherInfo.count', -1) do
      delete :destroy, :id => publisher_infos(:one).to_param
    end

    assert_redirected_to publisher_infos_path
  end
end
