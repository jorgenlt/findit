# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users
puts 'destroying users...'
User.destroy_all
puts 'users destroyed'

puts 'creating users...'
User.create!(
  first_name: "Olivia",
  last_name: "Fernandez",
  email: "olivia@gmail.com",
  password: "123456",
  phone_number: 87654321,
  address: 'henrik ibsens gate 15',
  zip_code: 1530,
  city: 'Oslo',
  country: 'Norway'
)

User.create!(
  first_name: "Amelia",
  last_name: "Olsen",
  email: "amelia@gmail.com",
  password: "123456",
  phone_number: 87654321,
  address: 'thoralf meyers gate 43',
  zip_code: 1525,
  city: 'Oslo',
  country: 'Norway'
)
puts 'users created'

# categories
puts 'destroying categories...'
Category.destroy_all
puts 'categories destroyed.'

puts 'creating categories...'
categories = [
  'bicycles',
  'electronics',
  'home',
  'pets',
  'sports',
  'vehicles',
  'work',
  'boats'
]

categories.each do |category|
  Category.create(category_name: category)
  puts "#{category} added"
end

puts "#{categories.size} categories created."
