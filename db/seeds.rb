# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "generating restaurant"
45.times do
restaurant = Restaurant.new(
    name: Faker::DumbAndDumber.character,
    phone_number: "06 16 79 99 00",
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save!
end


puts "generating reviews"
45.times do
review = Review.new(
    content: ["great restaurant", "great food", "disgusting"].sample,
    rating: rand(0..5),
    restaurant_id: rand(1..5)
  )
  review.save!
end
puts "just finished generating reviews !"
