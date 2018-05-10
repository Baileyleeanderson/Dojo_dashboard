require 'test_helper'

class DojoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dojo" do
    get :dojo
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get :id" do
    get ::id
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
