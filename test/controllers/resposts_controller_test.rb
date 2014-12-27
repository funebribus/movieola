require 'test_helper'

class RespostsControllerTest < ActionController::TestCase
  setup do
    @respost = resposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create respost" do
    assert_difference('Respost.count') do
      post :create, respost: { corpo: @respost.corpo, quantidadelikes: @respost.quantidadelikes }
    end

    assert_redirected_to respost_path(assigns(:respost))
  end

  test "should show respost" do
    get :show, id: @respost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @respost
    assert_response :success
  end

  test "should update respost" do
    patch :update, id: @respost, respost: { corpo: @respost.corpo, quantidadelikes: @respost.quantidadelikes }
    assert_redirected_to respost_path(assigns(:respost))
  end

  test "should destroy respost" do
    assert_difference('Respost.count', -1) do
      delete :destroy, id: @respost
    end

    assert_redirected_to resposts_path
  end
end
