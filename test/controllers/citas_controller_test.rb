require 'test_helper'

class CitasControllerTest < ActionController::TestCase
  setup do
    @cita = citas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cita" do
    assert_difference('Cita.count') do
      post :create, cita: { descripcion: @cita.descripcion, fecha: @cita.fecha, hora_final: @cita.hora_final, hora_inicial: @cita.hora_inicial, paciente_id: @cita.paciente_id }
    end

    assert_redirected_to cita_path(assigns(:cita))
  end

  test "should show cita" do
    get :show, id: @cita
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cita
    assert_response :success
  end

  test "should update cita" do
    patch :update, id: @cita, cita: { descripcion: @cita.descripcion, fecha: @cita.fecha, hora_final: @cita.hora_final, hora_inicial: @cita.hora_inicial, paciente_id: @cita.paciente_id }
    assert_redirected_to cita_path(assigns(:cita))
  end

  test "should destroy cita" do
    assert_difference('Cita.count', -1) do
      delete :destroy, id: @cita
    end

    assert_redirected_to citas_path
  end
end
