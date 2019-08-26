require 'test_helper'

class ParkingSpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_spot = parking_spots(:one)
  end

  test "should get index" do
    get parking_spots_url, as: :json
    assert_response :success
  end

  test "should create parking_spot" do
    assert_difference('ParkingSpot.count') do
      post parking_spots_url, params: { parking_spot: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show parking_spot" do
    get parking_spot_url(@parking_spot), as: :json
    assert_response :success
  end

  test "should update parking_spot" do
    patch parking_spot_url(@parking_spot), params: { parking_spot: {  } }, as: :json
    assert_response 200
  end

  test "should destroy parking_spot" do
    assert_difference('ParkingSpot.count', -1) do
      delete parking_spot_url(@parking_spot), as: :json
    end

    assert_response 204
  end
end
