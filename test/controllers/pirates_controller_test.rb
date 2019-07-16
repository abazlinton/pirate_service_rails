require 'test_helper'

class PiratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pirate = pirates(:one)
  end

  test "should get index" do
    get pirates_url, as: :json
    assert_response :success
  end

  test "should create pirate" do
    assert_difference('Pirate.count') do
      post pirates_url, params: { pirate: { first_name: @pirate.first_name, join_date: @pirate.join_date, last_name: @pirate.last_name, ship_id: @pirate.ship_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pirate" do
    get pirate_url(@pirate), as: :json
    assert_response :success
  end

  test "should update pirate" do
    patch pirate_url(@pirate), params: { pirate: { first_name: @pirate.first_name, join_date: @pirate.join_date, last_name: @pirate.last_name, ship_id: @pirate.ship_id } }, as: :json
    assert_response 200
  end

  test "should destroy pirate" do
    assert_difference('Pirate.count', -1) do
      delete pirate_url(@pirate), as: :json
    end

    assert_response 204
  end
end
