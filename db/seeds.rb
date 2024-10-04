# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning the database first..."
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "creating owners..."

gabriela = Owner.create(nickname: "Gabriela")
pamela = Owner.create(nickname: "Pamela")
susan = Owner.create(nickname: "Susan")
eleanor = Owner.create(nickname: "Eleanor")
barbara = Owner.create(nickname: "Barbara")

puts "creating cars...."

Car.create(brand: "Mercury", model: "Custom", year: 1950, fuel: "Unleaded petrol", owner: gabriela)
Car.create(brand: "Chevrolet", model: "Corvette", year: 1953, fuel: "Unleaded petrol", owner: pamela)
Car.create(brand: "Ford T", model: "Bird", year: 1956, fuel: "petrol", owner: susan)
Car.create(brand: "Shelby", model: "Mustang GT500", year: 1967, fuel: "Unleaded petrol", owner: eleanor)
Car.create(brand: "Aston Martin", model: "DB1", year: 1962, fuel: "Unleaded petrol", owner: barbara)
