require 'test_helper'

class LeagueTest < ActiveSupport::TestCase
  league_blank = League.create
  league_filled = League.create(name: "LeagueSide", latitude: 39.951703391704775, longitude: -75.17982175776424, price: 20000)

  test "name is required" do
    league_blank
    assert league_blank.errors.full_messages.include?("Name can't be blank")
  end

   test "latitude is required" do
    league_blank
    assert league_blank.errors.full_messages.include?("Latitude can't be blank")
    assert league_blank.errors.full_messages.include?("Latitude is not a number")
  end

  test "longitude is required" do
    league_blank
    assert league_blank.errors.full_messages.include?("Longitude can't be blank")
    assert league_blank.errors.full_messages.include?("Longitude is not a number")
  end

  test "price is required" do
    league_blank
    assert league_blank.errors.full_messages.include?("Price can't be blank")
    assert league_blank.errors.full_messages.include?("Price is not a number")
  end

  test "saves with valid fields" do
    league_filled
    assert league_filled.valid?
    assert league_filled.id.present?
  end
end
