require 'test_helper'

class AdBoardsCampaignsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_boards_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_boards_campaign" do
    assert_difference('AdBoardsCampaign.count') do
      post :create, :ad_boards_campaign => { }
    end

    assert_redirected_to ad_boards_campaign_path(assigns(:ad_boards_campaign))
  end

  test "should show ad_boards_campaign" do
    get :show, :id => ad_boards_campaigns(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ad_boards_campaigns(:one).to_param
    assert_response :success
  end

  test "should update ad_boards_campaign" do
    put :update, :id => ad_boards_campaigns(:one).to_param, :ad_boards_campaign => { }
    assert_redirected_to ad_boards_campaign_path(assigns(:ad_boards_campaign))
  end

  test "should destroy ad_boards_campaign" do
    assert_difference('AdBoardsCampaign.count', -1) do
      delete :destroy, :id => ad_boards_campaigns(:one).to_param
    end

    assert_redirected_to ad_boards_campaigns_path
  end
end
