require 'test_helper'

class ReastaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reastaurant = reastaurants(:one)
  end

  test "should get index" do
    get reastaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_reastaurant_url
    assert_response :success
  end

  test "should create reastaurant" do
    assert_difference('Reastaurant.count') do
      post reastaurants_url, params: { reastaurant: { adress: @reastaurant.adress, name: @reastaurant.name, phone: @reastaurant.phone, website: @reastaurant.website } }
    end

    assert_redirected_to reastaurant_url(Reastaurant.last)
  end

  test "should show reastaurant" do
    get reastaurant_url(@reastaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_reastaurant_url(@reastaurant)
    assert_response :success
  end

  test "should update reastaurant" do
    patch reastaurant_url(@reastaurant), params: { reastaurant: { adress: @reastaurant.adress, name: @reastaurant.name, phone: @reastaurant.phone, website: @reastaurant.website } }
    assert_redirected_to reastaurant_url(@reastaurant)
  end

  test "should destroy reastaurant" do
    assert_difference('Reastaurant.count', -1) do
      delete reastaurant_url(@reastaurant)
    end

    assert_redirected_to reastaurants_url
  end
end
