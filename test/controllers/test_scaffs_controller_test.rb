require 'test_helper'

class TestScaffsControllerTest < ActionController::TestCase
  setup do
    @test_scaff = test_scaffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_scaffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_scaff" do
    assert_difference('TestScaff.count') do
      post :create, test_scaff: {  }
    end

    assert_redirected_to test_scaff_path(assigns(:test_scaff))
  end

  test "should show test_scaff" do
    get :show, id: @test_scaff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_scaff
    assert_response :success
  end

  test "should update test_scaff" do
    patch :update, id: @test_scaff, test_scaff: {  }
    assert_redirected_to test_scaff_path(assigns(:test_scaff))
  end

  test "should destroy test_scaff" do
    assert_difference('TestScaff.count', -1) do
      delete :destroy, id: @test_scaff
    end

    assert_redirected_to test_scaffs_path
  end
end
