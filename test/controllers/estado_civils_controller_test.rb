require 'test_helper'

class EstadoCivilsControllerTest < ActionController::TestCase
  setup do
    @estado_civil = estado_civils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_civils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_civil" do
    assert_difference('EstadoCivil.count') do
      post :create, estado_civil: { descripcion: @estado_civil.descripcion, nombre: @estado_civil.nombre }
    end

    assert_redirected_to estado_civil_path(assigns(:estado_civil))
  end

  test "should show estado_civil" do
    get :show, id: @estado_civil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_civil
    assert_response :success
  end

  test "should update estado_civil" do
    patch :update, id: @estado_civil, estado_civil: { descripcion: @estado_civil.descripcion, nombre: @estado_civil.nombre }
    assert_redirected_to estado_civil_path(assigns(:estado_civil))
  end

  test "should destroy estado_civil" do
    assert_difference('EstadoCivil.count', -1) do
      delete :destroy, id: @estado_civil
    end

    assert_redirected_to estado_civils_path
  end
end
