require 'test_helper'

class DataEntriesControllerTest < ActionController::TestCase
  setup do
    @data_entry = data_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_entry" do
    assert_difference('DataEntry.count') do
      post :create, data_entry: @data_entry.attributes
    end

    assert_redirected_to data_entry_path(assigns(:data_entry))
  end

  test "should show data_entry" do
    get :show, id: @data_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_entry
    assert_response :success
  end

  test "should update data_entry" do
    put :update, id: @data_entry, data_entry: @data_entry.attributes
    assert_redirected_to data_entry_path(assigns(:data_entry))
  end

  test "should destroy data_entry" do
    assert_difference('DataEntry.count', -1) do
      delete :destroy, id: @data_entry
    end

    assert_redirected_to data_entries_path
  end
end
