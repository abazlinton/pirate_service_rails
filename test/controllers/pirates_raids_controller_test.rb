require 'test_helper'

class PiratesRaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pirates_raid = pirates_raids(:one)
  end

  test "should get index" do
    get pirates_raids_url, as: :json
    assert_response :success
  end

  test "should create pirates_raid" do
    assert_difference('PiratesRaid.count') do
      post pirates_raids_url, params: { pirates_raid: { pirate_id: @pirates_raid.pirate_id, raid_id: @pirates_raid.raid_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pirates_raid" do
    get pirates_raid_url(@pirates_raid), as: :json
    assert_response :success
  end

  test "should update pirates_raid" do
    patch pirates_raid_url(@pirates_raid), params: { pirates_raid: { pirate_id: @pirates_raid.pirate_id, raid_id: @pirates_raid.raid_id } }, as: :json
    assert_response 200
  end

  test "should destroy pirates_raid" do
    assert_difference('PiratesRaid.count', -1) do
      delete pirates_raid_url(@pirates_raid), as: :json
    end

    assert_response 204
  end
end
