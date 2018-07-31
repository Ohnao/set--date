require 'test_helper'

class TestMvCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_mvc = test_mvcs(:one)
  end

  test "should get index" do
    get test_mvcs_url
    assert_response :success
  end

  test "should get new" do
    get new_test_mvc_url
    assert_response :success
  end

  test "should create test_mvc" do
    assert_difference('TestMvc.count') do
      post test_mvcs_url, params: { test_mvc: { content: @test_mvc.content, text: @test_mvc.text } }
    end

    assert_redirected_to test_mvc_url(TestMvc.last)
  end

  test "should show test_mvc" do
    get test_mvc_url(@test_mvc)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_mvc_url(@test_mvc)
    assert_response :success
  end

  test "should update test_mvc" do
    patch test_mvc_url(@test_mvc), params: { test_mvc: { content: @test_mvc.content, text: @test_mvc.text } }
    assert_redirected_to test_mvc_url(@test_mvc)
  end

  test "should destroy test_mvc" do
    assert_difference('TestMvc.count', -1) do
      delete test_mvc_url(@test_mvc)
    end

    assert_redirected_to test_mvcs_url
  end
end
