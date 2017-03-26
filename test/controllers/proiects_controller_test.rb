require 'test_helper'

class ProiectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proiect = proiects(:one)
  end

  test "should get index" do
    get proiects_url
    assert_response :success
  end

  test "should get new" do
    get new_proiect_url
    assert_response :success
  end

  test "should create proiect" do
    assert_difference('Proiect.count') do
      post proiects_url, params: { proiect: { title: @proiect.title, todos: @proiect.todos } }
    end

    assert_redirected_to proiect_url(Proiect.last)
  end

  test "should show proiect" do
    get proiect_url(@proiect)
    assert_response :success
  end

  test "should get edit" do
    get edit_proiect_url(@proiect)
    assert_response :success
  end

  test "should update proiect" do
    patch proiect_url(@proiect), params: { proiect: { title: @proiect.title, todos: @proiect.todos } }
    assert_redirected_to proiect_url(@proiect)
  end

  test "should destroy proiect" do
    assert_difference('Proiect.count', -1) do
      delete proiect_url(@proiect)
    end

    assert_redirected_to proiects_url
  end
end
