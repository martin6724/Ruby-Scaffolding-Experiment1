require 'test_helper'

class Scaffolding2ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffolding2_item = scaffolding2_items(:one)
  end

  test "should get index" do
    get scaffolding2_items_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffolding2_item_url
    assert_response :success
  end

  test "should create scaffolding2_item" do
    assert_difference('Scaffolding2Item.count') do
      post scaffolding2_items_url, params: { scaffolding2_item: { description: @scaffolding2_item.description } }
    end

    assert_redirected_to scaffolding2_item_url(Scaffolding2Item.last)
  end

  test "should show scaffolding2_item" do
    get scaffolding2_item_url(@scaffolding2_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffolding2_item_url(@scaffolding2_item)
    assert_response :success
  end

  test "should update scaffolding2_item" do
    patch scaffolding2_item_url(@scaffolding2_item), params: { scaffolding2_item: { description: @scaffolding2_item.description } }
    assert_redirected_to scaffolding2_item_url(@scaffolding2_item)
  end

  test "should destroy scaffolding2_item" do
    assert_difference('Scaffolding2Item.count', -1) do
      delete scaffolding2_item_url(@scaffolding2_item)
    end

    assert_redirected_to scaffolding2_items_url
  end
end
