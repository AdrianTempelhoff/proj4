require 'test_helper'

class TempBasketsControllerTest < ActionController::TestCase
  setup do
    @temp_basket = temp_baskets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_baskets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_basket" do
    assert_difference('TempBasket.count') do
      post :create, temp_basket: { basket_id: @temp_basket.basket_id }
    end

    assert_redirected_to temp_basket_path(assigns(:temp_basket))
  end

  test "should show temp_basket" do
    get :show, id: @temp_basket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp_basket
    assert_response :success
  end

  test "should update temp_basket" do
    put :update, id: @temp_basket, temp_basket: { basket_id: @temp_basket.basket_id }
    assert_redirected_to temp_basket_path(assigns(:temp_basket))
  end

  test "should destroy temp_basket" do
    assert_difference('TempBasket.count', -1) do
      delete :destroy, id: @temp_basket
    end

    assert_redirected_to temp_baskets_path
  end
end
