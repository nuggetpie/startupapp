require 'test_helper'

class ShopProfilesControllerTest < ActionController::TestCase
  setup do
    @shop_profile = shop_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_profile" do
    assert_difference('ShopProfile.count') do
      post :create, shop_profile: { shop_category: @shop_profile.shop_category, shop_keyword: @shop_profile.shop_keyword, shop_name: @shop_profile.shop_name, shop_owner: @shop_profile.shop_owner, shop_product: @shop_profile.shop_product }
    end

    assert_redirected_to shop_profile_path(assigns(:shop_profile))
  end

  test "should show shop_profile" do
    get :show, id: @shop_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_profile
    assert_response :success
  end

  test "should update shop_profile" do
    patch :update, id: @shop_profile, shop_profile: { shop_category: @shop_profile.shop_category, shop_keyword: @shop_profile.shop_keyword, shop_name: @shop_profile.shop_name, shop_owner: @shop_profile.shop_owner, shop_product: @shop_profile.shop_product }
    assert_redirected_to shop_profile_path(assigns(:shop_profile))
  end

  test "should destroy shop_profile" do
    assert_difference('ShopProfile.count', -1) do
      delete :destroy, id: @shop_profile
    end

    assert_redirected_to shop_profiles_path
  end
end
