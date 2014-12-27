require 'test_helper'

class TopicosControllerTest < ActionController::TestCase
  setup do
    @topico = topicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topico" do
    assert_difference('Topico.count') do
      post :create, topico: { corpo: @topico.corpo, quantidade_likes: @topico.quantidade_likes, quantidade_visualizacoes: @topico.quantidade_visualizacoes, tags: @topico.tags, titulo: @topico.titulo }
    end

    assert_redirected_to topico_path(assigns(:topico))
  end

  test "should show topico" do
    get :show, id: @topico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topico
    assert_response :success
  end

  test "should update topico" do
    patch :update, id: @topico, topico: { corpo: @topico.corpo, quantidade_likes: @topico.quantidade_likes, quantidade_visualizacoes: @topico.quantidade_visualizacoes, tags: @topico.tags, titulo: @topico.titulo }
    assert_redirected_to topico_path(assigns(:topico))
  end

  test "should destroy topico" do
    assert_difference('Topico.count', -1) do
      delete :destroy, id: @topico
    end

    assert_redirected_to topicos_path
  end
end
