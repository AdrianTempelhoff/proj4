require 'test_helper'

class TempBasketItemsControllerTest < ActionController::TestCase
  setup do
    @temp_basket_item = temp_basket_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_basket_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_basket_item" do
    assert_difference('TempBasketItem.count') do
      post :create, temp_basket_item: { item_id: @temp_basket_item.item_id, temp_basket_id: @temp_basket_item.temp_basket_id }
    end

    assert_redirected_to temp_basket_item_path(assigns(:temp_basket_item))
  end

  test "should show temp_basket_item" do
    get :show, id: @temp_basket_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp_basket_item
    assert_response :success
  end

  test "should update temp_basket_item" do
    put :update, id: @temp_basket_item, temp_basket_item: { item_id: @temp_basket_item.item_id, temp_basket_id: @temp_basket_item.temp_basket_id }
    assert_redirected_to temp_basket_item_path(assigns(:temp_basket_item))
  end

  test "should destroy temp_basket_item" do
    assert_difference('TempBasketItem.count', -1) do
      delete :destroy, id: @temp_basket_item
    end

    assert_redirected_to temp_basket_items_path
  end
end
