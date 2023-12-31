require 'test_helper'

class BancosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banco = bancos(:one)
  end

  test "should get index" do
    get bancos_url
    assert_response :success
  end

  test "should get new" do
    get new_banco_url
    assert_response :success
  end

  test "should create banco" do
    assert_difference('Banco.count') do
      post bancos_url, params: { banco: { ano_fundacao: @banco.ano_fundacao, email: @banco.email, localizacao: @banco.localizacao, nome: @banco.nome, numero_agencias: @banco.numero_agencias, obs: @banco.obs } }
    end

    assert_redirected_to banco_url(Banco.last)
  end

  test "should show banco" do
    get banco_url(@banco)
    assert_response :success
  end

  test "should get edit" do
    get edit_banco_url(@banco)
    assert_response :success
  end

  test "should update banco" do
    patch banco_url(@banco), params: { banco: { ano_fundacao: @banco.ano_fundacao, email: @banco.email, localizacao: @banco.localizacao, nome: @banco.nome, numero_agencias: @banco.numero_agencias, obs: @banco.obs } }
    assert_redirected_to banco_url(@banco)
  end

  test "should destroy banco" do
    assert_difference('Banco.count', -1) do
      delete banco_url(@banco)
    end

    assert_redirected_to bancos_url
  end
end
