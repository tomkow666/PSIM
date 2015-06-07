require 'test_helper'

class ShipmentMethodsControllerTest < ActionController::TestCase
  setup do
    @shipment_method = shipment_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipment_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipment_method" do
    assert_difference('ShipmentMethod.count') do
      post :create, shipment_method: { name: @shipment_method.name }
    end

    assert_redirected_to shipment_method_path(assigns(:shipment_method))
  end

  test "should show shipment_method" do
    get :show, id: @shipment_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipment_method
    assert_response :success
  end

  test "should update shipment_method" do
    patch :update, id: @shipment_method, shipment_method: { name: @shipment_method.name }
    assert_redirected_to shipment_method_path(assigns(:shipment_method))
  end

  test "should destroy shipment_method" do
    assert_difference('ShipmentMethod.count', -1) do
      delete :destroy, id: @shipment_method
    end

    assert_redirected_to shipment_methods_path
  end
end
