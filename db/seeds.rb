# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Task.destroy_all

#Create a user
User.create!(
  first_name: "Younes",
  last_name: "ST",
  email: "younes@lewagon.com",
  password: "123456"
)

#Create 5 tasks without faker
Task.create!(
  title: "Buy milk",
  details: "Go to the supermarket and buy milk",
  completed: false,
  user: User.first
)

Task.create!(
  title: "Buy bread",
  details: "Go to the bakery and buy bread",
  completed: false,
  user: User.first
)

Task.create!(
  title: "Buy eggs",
  details: "Go to the supermarket and buy eggs",
  completed: false,
  user: User.first
)

Task.create!(
  title: "Buy cheese",
  details: "Go to the supermarket and buy cheese",
  completed: false,
  user: User.first
)
