require 'test_helper'

class AdBoardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_board" do
    assert_difference('AdBoard.count') do
      post :create, :ad_board => { }
    end

    assert_redirected_to ad_board_path(assigns(:ad_board))
  end

  test "should show ad_board" do
    get :show, :id => ad_boards(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_boards(:one).to_param
    assert_response :success
  end

  test "should update ad_board" do
    put :update, :id => ad_boards(:one).to_param, :ad_board => { }
    assert_redirected_to ad_board_path(assigns(:ad_board))
  end

  test "should destroy ad_board" do
    assert_difference('AdBoard.count', -1) do
      delete :destroy, :id => ad_boards(:one).to_param
    end

    assert_redirected_to ad_boards_path
  end
end
