require "application_system_test_case"

class ReastaurantsTest < ApplicationSystemTestCase
  setup do
    @reastaurant = reastaurants(:one)
  end

  test "visiting the index" do
    visit reastaurants_url
    assert_selector "h1", text: "Reastaurants"
  end

  test "creating a Reastaurant" do
    visit reastaurants_url
    click_on "New Reastaurant"

    fill_in "Adress", with: @reastaurant.adress
    fill_in "Name", with: @reastaurant.name
    fill_in "Phone", with: @reastaurant.phone
    fill_in "Website", with: @reastaurant.website
    click_on "Create Reastaurant"

    assert_text "Reastaurant was successfully created"
    click_on "Back"
  end

  test "updating a Reastaurant" do
    visit reastaurants_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @reastaurant.adress
    fill_in "Name", with: @reastaurant.name
    fill_in "Phone", with: @reastaurant.phone
    fill_in "Website", with: @reastaurant.website
    click_on "Update Reastaurant"

    assert_text "Reastaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Reastaurant" do
    visit reastaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reastaurant was successfully destroyed"
  end
end
