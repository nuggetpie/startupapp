require 'test_helper'

class ShareWithFriendsControllerTest < ActionController::TestCase
  setup do
    @share_with_friend = share_with_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:share_with_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share_with_friend" do
    assert_difference('ShareWithFriend.count') do
      post :create, share_with_friend: { collection_name_id: @share_with_friend.collection_name_id, friends_id: @share_with_friend.friends_id, shop_name_id: @share_with_friend.shop_name_id, shop_product_id: @share_with_friend.shop_product_id }
    end

    assert_redirected_to share_with_friend_path(assigns(:share_with_friend))
  end

  test "should show share_with_friend" do
    get :show, id: @share_with_friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share_with_friend
    assert_response :success
  end

  test "should update share_with_friend" do
    patch :update, id: @share_with_friend, share_with_friend: { collection_name_id: @share_with_friend.collection_name_id, friends_id: @share_with_friend.friends_id, shop_name_id: @share_with_friend.shop_name_id, shop_product_id: @share_with_friend.shop_product_id }
    assert_redirected_to share_with_friend_path(assigns(:share_with_friend))
  end

  test "should destroy share_with_friend" do
    assert_difference('ShareWithFriend.count', -1) do
      delete :destroy, id: @share_with_friend
    end

    assert_redirected_to share_with_friends_path
  end
end
