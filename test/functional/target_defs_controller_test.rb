require 'test_helper'

class TargetDefsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:target_defs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create target_def" do
    assert_difference('TargetDef.count') do
      post :create, :target_def => { }
    end

    assert_redirected_to target_def_path(assigns(:target_def))
  end

  test "should show target_def" do
    get :show, :id => target_defs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => target_defs(:one).to_param
    assert_response :success
  end

  test "should update target_def" do
    put :update, :id => target_defs(:one).to_param, :target_def => { }
    assert_redirected_to target_def_path(assigns(:target_def))
  end

  test "should destroy target_def" do
    assert_difference('TargetDef.count', -1) do
      delete :destroy, :id => target_defs(:one).to_param
    end

    assert_redirected_to target_defs_path
  end
end
