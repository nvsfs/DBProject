require 'test_helper'

class PracasControllerTest < ActionController::TestCase
  setup do
    @praca = pracas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create praca" do
    assert_difference('Praca.count') do
      post :create, praca: { area: @praca.area, codigo_bairro: @praca.codigo_bairro, codigo_logradouro: @praca.codigo_logradouro, endereco_equip_urbano: @praca.endereco_equip_urbano, latitude: @praca.latitude, lei_equip_urbano: @praca.lei_equip_urbano, longitude: @praca.longitude, nome_bairro: @praca.nome_bairro, nome_equip_urbano: @praca.nome_equip_urbano, nome_oficial_equip_urbano: @praca.nome_oficial_equip_urbano, perimetro: @praca.perimetro, tipo_equip_urbano: @praca.tipo_equip_urbano }
    end

    assert_redirected_to praca_path(assigns(:praca))
  end

  test "should show praca" do
    get :show, id: @praca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @praca
    assert_response :success
  end

  test "should update praca" do
    patch :update, id: @praca, praca: { area: @praca.area, codigo_bairro: @praca.codigo_bairro, codigo_logradouro: @praca.codigo_logradouro, endereco_equip_urbano: @praca.endereco_equip_urbano, latitude: @praca.latitude, lei_equip_urbano: @praca.lei_equip_urbano, longitude: @praca.longitude, nome_bairro: @praca.nome_bairro, nome_equip_urbano: @praca.nome_equip_urbano, nome_oficial_equip_urbano: @praca.nome_oficial_equip_urbano, perimetro: @praca.perimetro, tipo_equip_urbano: @praca.tipo_equip_urbano }
    assert_redirected_to praca_path(assigns(:praca))
  end

  test "should destroy praca" do
    assert_difference('Praca.count', -1) do
      delete :destroy, id: @praca
    end

    assert_redirected_to pracas_path
  end
end
