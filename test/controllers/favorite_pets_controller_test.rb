require 'test_helper'

class FavoritePetsControllerTest < ActionController::TestCase
  setup do
    @favorite_pet = favorite_pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_pet" do
    assert_difference('FavoritePet.count') do
      post :create, favorite_pet: { pet_id: @favorite_pet.pet_id, user_id: @favorite_pet.user_id }
    end

    assert_redirected_to favorite_pet_path(assigns(:favorite_pet))
  end

  test "should show favorite_pet" do
    get :show, id: @favorite_pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_pet
    assert_response :success
  end

  test "should update favorite_pet" do
    patch :update, id: @favorite_pet, favorite_pet: { pet_id: @favorite_pet.pet_id, user_id: @favorite_pet.user_id }
    assert_redirected_to favorite_pet_path(assigns(:favorite_pet))
  end

  test "should destroy favorite_pet" do
    assert_difference('FavoritePet.count', -1) do
      delete :destroy, id: @favorite_pet
    end

    assert_redirected_to favorite_pets_path
  end
end
