require 'test_helper'

class MaterialesControllerTest < ActionController::TestCase
  setup do
    @materiale = materiales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiale" do
    assert_difference('Materiale.count') do
      post :create, materiale: { cantidad: @materiale.cantidad, descripcion: @materiale.descripcion, id_material: @materiale.id_material, nombre: @materiale.nombre }
    end

    assert_redirected_to materiale_path(assigns(:materiale))
  end

  test "should show materiale" do
    get :show, id: @materiale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiale
    assert_response :success
  end

  test "should update materiale" do
    patch :update, id: @materiale, materiale: { cantidad: @materiale.cantidad, descripcion: @materiale.descripcion, id_material: @materiale.id_material, nombre: @materiale.nombre }
    assert_redirected_to materiale_path(assigns(:materiale))
  end

  test "should destroy materiale" do
    assert_difference('Materiale.count', -1) do
      delete :destroy, id: @materiale
    end

    assert_redirected_to materiales_path
  end
end
