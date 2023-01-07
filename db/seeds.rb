# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying pet reports..."
Pet.destroy_all
puts "Done"

puts "Creating 40 pet reports..."
40.times do 
  Pet.create!(
    contact_name: Faker::Name.name,
    species: Pet::SPECIES.sample,
    color: Faker::Color.color_name,
    address: Faker::Address.street_address,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
end
puts "Done"