require 'test_helper'

class CabinetItemsControllerTest < ActionController::TestCase
  setup do
    @cabinet_item = cabinet_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cabinet_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cabinet_item" do
    assert_difference('CabinetItem.count') do
      post :create, cabinet_item: { cabinet_id: @cabinet_item.cabinet_id, ingredient_id: @cabinet_item.ingredient_id }
    end

    assert_redirected_to cabinet_item_path(assigns(:cabinet_item))
  end

  test "should show cabinet_item" do
    get :show, id: @cabinet_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cabinet_item
    assert_response :success
  end

  test "should update cabinet_item" do
    put :update, id: @cabinet_item, cabinet_item: { cabinet_id: @cabinet_item.cabinet_id, ingredient_id: @cabinet_item.ingredient_id }
    assert_redirected_to cabinet_item_path(assigns(:cabinet_item))
  end

  test "should destroy cabinet_item" do
    assert_difference('CabinetItem.count', -1) do
      delete :destroy, id: @cabinet_item
    end

    assert_redirected_to cabinet_items_path
  end
end
