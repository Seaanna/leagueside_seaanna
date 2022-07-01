# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

League.create(
  name: "Disneyland",
  latitude: 33.81241271190076,
  longitude: -117.91893128502973,
  price: 10000
)

League.create(
  name: "Padres",
  latitude: 32.70768457303108,
  longitude: -117.15714196701036,
  price: 5000
)

League.create(
  name: "LeagueSide",
  latitude: 39.951703391704775,
  longitude: -75.17982175776424,
  price: 20000
)