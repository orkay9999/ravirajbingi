require 'test_helper'

class HrTablesControllerTest < ActionController::TestCase
  setup do
    @hr_table = hr_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hr_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hr_table" do
    assert_difference('HrTable.count') do
      post :create, hr_table: { Hol_approved_by: @hr_table.Hol_approved_by, Hol_bal: @hr_table.Hol_bal, Hol_from: @hr_table.Hol_from, Hol_req_from: @hr_table.Hol_req_from, Hol_taken: @hr_table.Hol_taken, Hol_to: @hr_table.Hol_to }
    end

    assert_redirected_to hr_table_path(assigns(:hr_table))
  end

  test "should show hr_table" do
    get :show, id: @hr_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hr_table
    assert_response :success
  end

  test "should update hr_table" do
    patch :update, id: @hr_table, hr_table: { Hol_approved_by: @hr_table.Hol_approved_by, Hol_bal: @hr_table.Hol_bal, Hol_from: @hr_table.Hol_from, Hol_req_from: @hr_table.Hol_req_from, Hol_taken: @hr_table.Hol_taken, Hol_to: @hr_table.Hol_to }
    assert_redirected_to hr_table_path(assigns(:hr_table))
  end

  test "should destroy hr_table" do
    assert_difference('HrTable.count', -1) do
      delete :destroy, id: @hr_table
    end

    assert_redirected_to hr_tables_path
  end
end
