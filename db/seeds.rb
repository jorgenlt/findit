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

puts 'creating posts'

puts 'bicycles'
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/06/09/00/10/modern-802751__480.jpg', price: 400, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/09/13/09/50/mountain-bike-5567847__480.jpg', price: 550, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/06/24/13/41/bike-5336239__480.jpg', price: 300, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2021/04/24/15/54/bicycle-6204404__480.png', price: 640, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/04/19/10/47/ebike-5063056__480.jpg', price: 590, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/10/17/14/20/bike-61905__480.jpg', price: 490, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/03/11/15/52/bike-668794__480.jpg', price: 800, category_id: 1, sub_category_id: 9)
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2021/07/10/09/51/electric-cargo-bike-6401039__480.jpg', price: 900, category_id: 1, sub_category_id: 9)

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2019/10/09/00/03/bicycle-4536185__480.jpg', price: 400, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/06/28/22/17/bike-2452354__480.jpg', price: 550, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/04/26/10/30/bike-2262232__480.jpg', price: 300, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/06/29/16/56/old-bicycle-825724__480.jpg', price: 640, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/09/05/08/14/bike-924153__480.jpg', price: 590, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/27/19/05/bike-429412__480.jpg', price: 490, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/01/24/01/58/bicycle-609652__480.jpg', price: 800, category_id: 1, sub_category_id: 10)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/20/10/19/bike-1842443__480.jpg', price: 900, category_id: 1, sub_category_id: 10)



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
