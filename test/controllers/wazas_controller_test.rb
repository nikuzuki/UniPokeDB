require 'test_helper'

class WazasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waza = wazas(:one)
  end

  test "should get index" do
    get wazas_url
    assert_response :success
  end

  test "should get new" do
    get new_waza_url
    assert_response :success
  end

  test "should create waza" do
    assert_difference('Waza.count') do
      post wazas_url, params: { waza: { name: @waza.name, type_id: @waza.type_id } }
    end

    assert_redirected_to waza_path(Waza.last)
  end

  test "should show waza" do
    get waza_url(@waza)
    assert_response :success
  end

  test "should get edit" do
    get edit_waza_url(@waza)
    assert_response :success
  end

  test "should update waza" do
    patch waza_url(@waza), params: { waza: { name: @waza.name, type_id: @waza.type_id } }
    assert_redirected_to waza_path(@waza)
  end

  test "should destroy waza" do
    assert_difference('Waza.count', -1) do
      delete waza_url(@waza)
    end

    assert_redirected_to wazas_path
  end
end
