require 'test_helper'

class ProdutorsControllerTest < ActionController::TestCase
  setup do
    @produtor = produtors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produtor" do
    assert_difference('Produtor.count') do
      post :create, produtor: { produtor: @produtor.produtor }
    end

    assert_redirected_to produtor_path(assigns(:produtor))
  end

  test "should show produtor" do
    get :show, id: @produtor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produtor
    assert_response :success
  end

  test "should update produtor" do
    patch :update, id: @produtor, produtor: { produtor: @produtor.produtor }
    assert_redirected_to produtor_path(assigns(:produtor))
  end

  test "should destroy produtor" do
    assert_difference('Produtor.count', -1) do
      delete :destroy, id: @produtor
    end

    assert_redirected_to produtors_path
  end
end
