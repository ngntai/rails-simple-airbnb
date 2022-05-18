# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating 10 flats..."

10.times do
  flat = Flat.new(
    name: Faker::TvShows::Simpsons.location,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Company.catch_phrase,
    price_per_night: rand(1..500),
    number_of_guests: rand(1..6)
  )
  flat.save!
end
puts 'Finished!'
