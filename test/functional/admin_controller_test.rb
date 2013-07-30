# -*- encoding : utf-8 -*-
require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get attempt_login" do
    get :attempt_login
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
