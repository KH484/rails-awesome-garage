# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

yummy_mummy = Owner.create(nickname: "YummyMummy")
only_italian = Owner.create(nickname: "ExceedTheLimit")
vintage = Owner.create(nickname: "classic_like_my_car")
boy_racer = Owner.create(nickname: "boy_racer")

bmwx5 = Car.create(brand: "BMW", model: "X5", year: 2023, fuel: "Unleaded petrol", owner: yummy_mummy)
ferrari = Car.create(brand: "Ferrari", model: "296 GTB", year: 2024, fuel: "Unleaded petrol", owner: only_italian)
classic_car= Car.create(brand: "Cadillac", model: "16", year: 1930, fuel: "petrol", owner: vintage)
bmwx3 = Car.create(brand: "Bugatti", model: "Chiron Super Sport", year: 2024, fuel: "Unleaded petrol", owner: boy_racer)
