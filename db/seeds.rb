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
puts '-> users destroyed'

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
puts '-> users created'

# categories
puts 'destroying categories...'
Category.destroy_all
puts '-> categories destroyed.'

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
  puts "...#{category} added"
end

puts "-> #{categories.size} categories created."


# sub-categories

puts 'creating sub-categories for bicyles'
bicycles = [
  'electrical',
  'hybrid',
  'offroad',
  'racer',
  'other bikes'
]
bicycles.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'bicycles').id)
  puts "...#{sub} added"
end
puts "-> #{bicycles.size} sub-categories was created."

puts 'creating sub-categories for electronics'
electronics = [
  'computers',
  'photo and video',
  'tv',
  'household appliances',
  'smart phones'
]
electronics.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'electronics').id)
  puts "...#{sub} added"
end
puts "-> #{electronics.size} sub-categories was created."

puts 'creating sub-categories for home'
home = [
  'furniture',
  'lamps and lights',
  'kitchen'
]
home.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'home').id)
  puts "...#{sub} added"
end
puts "-> #{home.size} sub-categories was created."

puts 'creating sub-categories for pets'
pets = [
  'bird',
  'cat',
  'dog',
  'fish',
  'horse'
]
pets.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'pets').id)
  puts "...#{sub} added"
end
puts "-> #{pets.size} sub-categories was created."

puts 'creating sub-categories for sports'
sports = [
  'ballsport',
  'golf',
  'outdoors',
  'winter',
  'water'
]
sports.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'sports').id)
  puts "...#{sub} added"
end
puts "-> #{sports.size} sub-categories was created."

puts 'creating sub-categories for vehicles'
vehicles = [
  'car',
  'motorcycle',
  'truck'
]
vehicles.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'vehicles').id)
  puts "...#{sub} added"
end
puts "-> #{vehicles.size} sub-categories was created."

puts 'creating sub-categories for work'
work = [
  'full-time',
  'part-time',
]
work.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'work').id)
  puts "...#{sub} added"
end
puts "-> #{work.size} sub-categories was created."

puts 'creating sub-categories for boats'
boats = [
  'sailboat',
  'speedboat',
  'yacht'
]
boats.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'boats').id)
  puts "...#{sub} added"
end
puts "-> #{boats.size} sub-categories was created."





# # category properties
# puts 'destroying properties...'
# Property.destroy_all
# puts '-> properties destroyed.'

# puts 'creating properties'
# properties = [
#   'electrical',
#   'hybrid',
#   'offroad',
#   'racer',
#   'other bikes',

#   'computers',
#   'photo and video',
#   'tv',
#   'household appliances',
#   'smart phones',

#   'furniture',
#   'lamps and lights',
#   'kitchen',

#   'bird',
#   'cat',
#   'dog',
#   'fish',
#   'horse',

#   'ballsport',
#   'golf',
#   'outdoors',
#   'winter',
#   'water',

#   'car',
#   'motorcycle',
#   'truck',

#   'full-time',
#   'part-time',

#   'sailboat',
#   'speedboat',
#   'yacht'
# ]

# properties.each do |property|
#   Property.create(property_name: property)
#   puts "...#{property} added"
# end

# puts "-> #{properties.size} properties created."
