require 'test_helper'

class LeagueTest < ActiveSupport::TestCase
  def setup
    @league_blank = League.create
    @league_filled = League.create(
      name: "LeagueSide",
      latitude: 39.951703391704775,
      longitude: -75.17982175776424,
      price: 20000
    )
    @league_filled_2 = League.create(
      name: "Disneyland",
      latitude: 33.81241271190076,
      longitude: -117.91893128502973,
      price: 10000
    )
  end

  test "name is required" do
    assert @league_blank.errors.full_messages.include?("Name can't be blank")
  end

   test "latitude is required" do
    assert @league_blank.errors.full_messages.include?("Latitude can't be blank")
    assert @league_blank.errors.full_messages.include?("Latitude is not a number")
  end

  test "longitude is required" do
    assert @league_blank.errors.full_messages.include?("Longitude can't be blank")
    assert @league_blank.errors.full_messages.include?("Longitude is not a number")
  end

  test "price is required" do
    assert @league_blank.errors.full_messages.include?("Price can't be blank")
    assert @league_blank.errors.full_messages.include?("Price is not a number")
  end

  test "saves with valid fields" do
    assert @league_filled.valid?
    assert @league_filled.id.present?
  end

  test "search works with budget, lat, long, radius" do
    budget = 30000
    lat = 39.9
    long = -75.1
    radius = 10

    leagues = League.search(budget, lat, long, radius)

    assert_equal leagues.length, 1
    assert leagues.first.name == "LeagueSide"
  end

  test "search filters out based on budget" do
    budget = 5000
    lat = 39.9
    long = -75.1
    radius = 1000

    leagues = League.search(budget, lat, long, radius)

    assert_equal leagues.length, 0
  end

end
