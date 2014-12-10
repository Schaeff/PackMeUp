require 'test_helper'

class USuitcasesControllerTest < ActionController::TestCase
  setup do
    @u_suitcase = u_suitcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_suitcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_suitcase" do
    assert_difference('USuitcase.count') do
      post :create, u_suitcase: { country_id: @u_suitcase.country_id, user_id: @u_suitcase.user_id, weather: @u_suitcase.weather }
    end

    assert_redirected_to u_suitcase_path(assigns(:u_suitcase))
  end

  test "should show u_suitcase" do
    get :show, id: @u_suitcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @u_suitcase
    assert_response :success
  end

  test "should update u_suitcase" do
    patch :update, id: @u_suitcase, u_suitcase: { country_id: @u_suitcase.country_id, user_id: @u_suitcase.user_id, weather: @u_suitcase.weather }
    assert_redirected_to u_suitcase_path(assigns(:u_suitcase))
  end

  test "should destroy u_suitcase" do
    assert_difference('USuitcase.count', -1) do
      delete :destroy, id: @u_suitcase
    end

    assert_redirected_to u_suitcases_path
  end
end
