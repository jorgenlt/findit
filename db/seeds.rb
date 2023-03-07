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

icons = {
  bicycles: 'fa-solid fa-bicycle',
  electronics: 'fa-solid fa-mobile',
  home: 'fa-solid fa-house-chimney-window',
  pets: 'fa-solid fa-dog',
  sports: 'fa-solid fa-volleyball',
  vehicles: 'fa-solid fa-car-side',
  work: 'fa-solid fa-briefcase',
  boats: 'fa-solid fa-sailboat',
  electrical: 'fa-solid fa-bolt',
  hybrid: 'fa-solid fa-bicycle',
  offroad: 'fa-solid fa-route',
  racer: 'fa-solid fa-road',
  other: 'fa-solid fa-person-biking',
  computers: 'fa-solid fa-computer',
  photo: 'fa-solid fa-camera',
  tv: 'fa-solid fa-tv',
  household: 'fa-regular fa-hard-drive',
  smartphones: 'fa-solid fa-mobile',
  furniture: 'fa-solid fa-couch',
  lamps: 'fa-solid fa-lightbulb',
  kitchen: 'fa-solid fa-kitchen-set',
  bird: 'fa-solid fa-kiwi-bird',
  cat: 'fa-solid fa-cat',
  dog: 'fa-solid fa-dog',
  fish: 'fa-solid fa-fish',
  horse: 'fa-solid fa-horse',
  ballsport: 'fa-solid fa-volleyball',
  golf: 'fa-solid fa-golf-ball-tee',
  outdoors: 'fa-solid fa-tent',
  winter: 'fa-solid fa-snowflake',
  water: 'fa-solid fa-water',
  car: 'fa-solid fa-car-side',
  motorcycle: 'fa-solid fa-motorcycle',
  truck: 'fa-solid fa-truck',
  fulltime: 'fa-solid fa-circle',
  parttime: 'fa-solid fa-circle-half-stroke',
  sailboat: 'fa-solid fa-sailboat',
  speedboat: 'fa-solid fa-ship',
  yacht: 'fa-solid fa-anchor'
}

categories.each do |category|
  Category.create(category_name: category, fa_icon: icons[category.to_sym])
  puts "#{icons[category.to_sym]}"
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
  'other'
]
bicycles.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'bicycles').id, fa_icon: icons[sub.to_sym])
  puts "...#{sub} added"
end
puts "-> #{bicycles.size} sub-categories was created."

puts 'creating sub-categories for electronics'
electronics = [
  'computers',
  'photo',
  'tv',
  'household',
  'smartphones'
]
electronics.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'electronics').id, fa_icon: icons[sub.to_sym])
  puts "...#{sub} added"
end
puts "-> #{electronics.size} sub-categories was created."

puts 'creating sub-categories for home'
home = [
  'furniture',
  'lamps',
  'kitchen'
]
home.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'home').id, fa_icon: icons[sub.to_sym])
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
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'pets').id, fa_icon: icons[sub.to_sym])
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
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'sports').id, fa_icon: icons[sub.to_sym])
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
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'vehicles').id, fa_icon: icons[sub.to_sym])
  puts "...#{sub} added"
end
puts "-> #{vehicles.size} sub-categories was created."

puts 'creating sub-categories for work'
work = [
  'fulltime',
  'parttime'
]
work.each do |sub|
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'work').id, fa_icon: icons[sub.to_sym])
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
  Category.create(category_name: sub, parent_category_id: Category.find_by(category_name: 'boats').id, fa_icon: icons[sub.to_sym])
  puts "...#{sub} added"
end
puts "-> #{boats.size} sub-categories was created."

puts 'creating posts'

puts 'creating bicycles...'
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/06/09/00/10/modern-802751__480.jpg', price: 400, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/09/13/09/50/mountain-bike-5567847__480.jpg', price: 550, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/06/24/13/41/bike-5336239__480.jpg', price: 300, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2021/04/24/15/54/bicycle-6204404__480.png', price: 640, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/04/19/10/47/ebike-5063056__480.jpg', price: 590, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/10/17/14/20/bike-61905__480.jpg', price: 490, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/03/11/15/52/bike-668794__480.jpg', price: 800, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')
Post.create(user_id: 1, post_title: 'Nice electrical bike, like new', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2021/07/10/09/51/electric-cargo-bike-6401039__480.jpg', price: 900, category_id: 1, sub_category_id: 9, category_name:'bicycles', sub_category_name: 'electrical')

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2019/10/09/00/03/bicycle-4536185__480.jpg', price: 400, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/06/28/22/17/bike-2452354__480.jpg', price: 550, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/04/26/10/30/bike-2262232__480.jpg', price: 300, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/06/29/16/56/old-bicycle-825724__480.jpg', price: 640, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/09/05/08/14/bike-924153__480.jpg', price: 590, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/27/19/05/bike-429412__480.jpg', price: 490, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/01/24/01/58/bicycle-609652__480.jpg', price: 800, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/20/10/19/bike-1842443__480.jpg', price: 900, category_id: 1, sub_category_id: 10, category_name:'bicycles', sub_category_name: 'hybrid')

Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/1057566460/photo/mountain-biker-ride-down-from-hill-close-up-wheel-image-active-and-sport-leisure-concept.jpg?s=612x612&w=0&k=20&c=nsOAjqrMnaRD3mDhE-H2KzdVybi55SN05aimogjgNsI=', price: 400, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/468267742/photo/riding-a-fast-single-trail-in-the-forest.jpg?s=612x612&w=0&k=20&c=V7ZlJBck-1L0RRMDKQUvhGoznKJIX3qGnBYSXYI5hec=', price: 550, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/619534004/photo/group-of-cyclists-on-sports-mountainbike.jpg?s=612x612&w=0&k=20&c=51RtA095H7LXjU624gxUatS4Fgb2H5zXjhXCMsV4sKQ=', price: 300, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/683719516/photo/man-riding-a-mountain-bike.jpg?s=612x612&w=0&k=20&c=Adh1H0OAehx1BqVJh_Qagl7EdjocotWiNlHlZKWi4Uk=', price: 640, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/677495104/photo/rambling-through-the-countryside.jpg?s=612x612&w=0&k=20&c=20iPm7iS-6Xm_RvfzkJapuV8v2dCmqrmJp2_0uFe4nQ=', price: 590, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/677495104/photo/rambling-through-the-countryside.jpg?s=612x612&w=0&k=20&c=20iPm7iS-6Xm_RvfzkJapuV8v2dCmqrmJp2_0uFe4nQ=', price: 490, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/165567864/photo/close-up-of-a-man-on-mountain-bike-riding-on-trail.jpg?b=1&s=170667a&w=0&k=20&c=aHElJL3DXlD5LHRDKIECWVl--29M9958XDC6i5GAi-s=', price: 800, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/1194926585/photo/hardtail-mountain-bike.jpg?b=1&s=170667a&w=0&k=20&c=BQZxOdNzCjwZ6IXSVpI1knmJeBvs495e9ztS7VZorHM=', price: 900, category_id: 1, sub_category_id: 11, category_name:'bicycles', sub_category_name: 'offroad')

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/22/road-cycling-3469428__480.jpg', price: 400, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/10/19/17/57/race-bike-5668516__480.jpg', price: 550, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/08/07/11/44/racer-bike-2602969__480.jpg', price: 300, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/09/04/12/38/tour-de-france-5543967__480.jpg', price: 640, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/09/17/11/road-bike-1812217__480.jpg', price: 590, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/30/road-cycling-3469449__480.jpg', price: 490, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/30/road-cycling-3469449__480.jpg', price: 800, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2013/12/24/12/30/bike-233343__480.jpg', price: 900, category_id: 1, sub_category_id: 12, category_name:'bicycles', sub_category_name: 'racer')

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2022/01/19/19/41/san-francisco-6950837__480.jpg', price: 400, category_id: 1, sub_category_id: 13, category_name:'bicycles', sub_category_name: 'other')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/01/06/23/25/snow-3066167__480.jpg', price: 550, category_id: 1, sub_category_id: 13, category_name:'bicycles', sub_category_name: 'other')
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2022/07/24/19/42/bike-7342379__480.png', price: 300, category_id: 1, sub_category_id: 13, category_name:'bicycles', sub_category_name: 'other')
puts '-> bicycles created'

puts 'creating electronics'
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241__480.jpg', price: 400, category_id: 2, sub_category_id: 14, category_name:'electronics', sub_category_name: 'computers')
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/29/06/18/home-office-1867761__480.jpg', price: 400, category_id: 2, sub_category_id: 14, category_name:'electronics', sub_category_name: 'computers')
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/06/28/05/10/laptop-1483974__480.jpg', price: 400, category_id: 2, sub_category_id: 14, category_name:'electronics', sub_category_name: 'computers')
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761__480.jpg', price: 400, category_id: 2, sub_category_id: 14, category_name:'electronics', sub_category_name: 'computers')
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196__480.jpg', price: 400, category_id: 2, sub_category_id: 14, category_name:'electronics', sub_category_name: 'computers')

Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/04/30/05/04/camera-1362419__480.jpg', price: 400, category_id: 2, sub_category_id: 15, category_name:'electronics', sub_category_name: 'photo')
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/03/07/00/01/photo-camera-1241441__480.jpg', price: 400, category_id: 2, sub_category_id: 15, category_name:'electronics', sub_category_name: 'photo')
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/29/14/53/camera-431119__480.jpg', price: 400, category_id: 2, sub_category_id: 15, category_name:'electronics', sub_category_name: 'photo')
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/04/22/10/44/camera-2251051__480.jpg', price: 400, category_id: 2, sub_category_id: 15, category_name:'electronics', sub_category_name: 'photo')
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/04/14/13/15/digital-camera-33879__480.png', price: 400, category_id: 2, sub_category_id: 15, category_name:'electronics', sub_category_name: 'photo')

Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/04/13/13/00/flat-screen-32307__480.png', price: 400, category_id: 2, sub_category_id: 16, category_name:'electronics', sub_category_name: 'tv')
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/30/08/46/living-room-1872192__480.jpg', price: 400, category_id: 2, sub_category_id: 16, category_name:'electronics', sub_category_name: 'tv')
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/02/07/20/58/tv-627876__480.jpg', price: 400, category_id: 2, sub_category_id: 16, category_name:'electronics', sub_category_name: 'tv')
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/08/28/00/57/tv-1625228__480.jpg', price: 400, category_id: 2, sub_category_id: 16, category_name:'electronics', sub_category_name: 'tv')

Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/08/10/03/01/washing-machine-2617514__480.jpg', price: 400, category_id: 2, sub_category_id: 17, category_name:'electronics', sub_category_name: 'household')
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2019/04/29/00/39/washing-4164831__480.jpg', price: 400, category_id: 2, sub_category_id: 17, category_name:'electronics', sub_category_name: 'household')
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/11/08/14/13/switch-1033640__480.jpg', price: 400, category_id: 2, sub_category_id: 17, category_name:'electronics', sub_category_name: 'household')
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/10/31/18/50/washing-machine-1786385__480.png', price: 400, category_id: 2, sub_category_id: 17, category_name:'electronics', sub_category_name: 'household')

Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/11/19/21/14/glasses-1052023__480.jpg', price: 400, category_id: 2, sub_category_id: 18, category_name:'electronics', sub_category_name: 'smartphones')
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/02/02/11/08/office-620817__480.jpg', price: 400, category_id: 2, sub_category_id: 18, category_name:'electronics', sub_category_name: 'smartphones')
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/20/08/33/camera-1842202__480.jpg', price: 400, category_id: 2, sub_category_id: 18, category_name:'electronics', sub_category_name: 'smartphones')
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__480.jpg', price: 400, category_id: 2, sub_category_id: 18, category_name:'electronics', sub_category_name: 'smartphones')
puts '-> electronics created'

puts 'creating home'
furniture = ['https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221__480.jpg', 'https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156__480.jpg', 'https://cdn.pixabay.com/photo/2014/07/10/17/17/bedroom-389254__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/19/13/06/bed-1839183__480.jpg']
furniture.each do |pic|
  Post.create(user_id: 2, post_title: 'bed for sale', post_body: 'Very little used. Come check it out.', image_url: pic, price: rand(200..700), category_id: 3, sub_category_id: 19, category_name:'home', sub_category_name: 'furniture')
end

lamps = ['https://cdn.pixabay.com/photo/2022/08/17/02/23/edison-bulb-7391388__480.jpg', 'https://cdn.pixabay.com/photo/2017/12/27/16/32/lantern-3043042__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/18/20/05/light-bulbs-1603766__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/21/18/20/bright-1847006__480.jpg']
lamps.each do |pic|
  Post.create(user_id: 2, post_title: 'beautiful lamp', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 3, sub_category_id: 20, category_name:'home', sub_category_name: 'lamps')
end

kitchen = ['https://cdn.pixabay.com/photo/2015/05/02/17/05/cook-750142__480.jpg', 'https://cdn.pixabay.com/photo/2014/11/24/14/39/potatoes-544073__480.jpg', 'https://cdn.pixabay.com/photo/2014/11/24/14/35/pot-544071__480.jpg', 'https://cdn.pixabay.com/photo/2013/07/12/12/53/cooking-pot-146459__480.png']
kitchen.each do |pic|
  Post.create(user_id: 2, post_title: 'pot for sale', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 3, sub_category_id: 21, category_name:'home', sub_category_name: 'kitchen')
end
puts '->home created'

puts 'creating pets'
bird = ['https://cdn.pixabay.com/photo/2018/08/12/16/59/parrot-3601194__480.jpg', 'https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/23/18/27/hummingbird-1854225__480.jpg', 'https://cdn.pixabay.com/photo/2017/09/16/19/33/parrot-2756488__480.jpg']
bird.each do |pic|
  Post.create(user_id: 2, post_title: 'funny bird', post_body: 'Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 22, category_name:'pets', sub_category_name: 'bird')
end

cat = ['https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__480.jpg', 'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262__480.jpg', 'https://cdn.pixabay.com/photo/2017/11/14/13/06/kitty-2948404__480.jpg', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720__480.jpg']
cat.each do |pic|
  Post.create(user_id: 2, post_title: 'cute kitten', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 23, category_name:'pets', sub_category_name: 'cat')
end

dog = ['https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__480.jpg', 'https://cdn.pixabay.com/photo/2015/11/17/13/13/bulldog-1047518__480.jpg', 'https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374__480.jpg', 'https://cdn.pixabay.com/photo/2015/07/09/19/32/dog-838281__480.jpg']
dog.each do |pic|
  Post.create(user_id: 2, post_title: 'adopt a dog', post_body: 'Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 24, category_name:'pets', sub_category_name: 'dog')
end
puts '->pets created'

puts 'creating sports'
ball = ['https://cdn.pixabay.com/photo/2012/02/29/15/44/football-19115__480.jpg', 'https://cdn.pixabay.com/photo/2019/09/03/16/06/sport-4449736__480.jpg', 'https://cdn.pixabay.com/photo/2017/06/12/01/50/soccer-2394121__480.jpg', 'https://cdn.pixabay.com/photo/2016/05/25/10/22/ball-1414400__480.jpg', 'https://cdn.pixabay.com/photo/2012/02/29/16/12/football-19448__480.jpg', 'https://cdn.pixabay.com/photo/2016/02/18/14/30/football-1207235__480.jpg', 'https://cdn.pixabay.com/photo/2015/09/09/18/26/green-932350__480.jpg']
ball.each do |pic|
  Post.create(user_id: 2, post_title: 'Football boots, little worn', post_body: 'Selling my awesome football boots! ', image_url: pic, price: rand(50..300), category_id: 5, sub_category_id: 27, category_name:'sports', sub_category_name: 'ballsport')
end

golf = ['https://cdn.pixabay.com/photo/2016/11/29/13/48/golf-1869983__480.jpg', 'https://cdn.pixabay.com/photo/2015/12/02/21/12/golf-1073465__480.jpg', 'https://cdn.pixabay.com/photo/2014/11/28/20/42/golf-ball-549228__480.jpg', 'https://cdn.pixabay.com/photo/2014/10/11/07/18/golf-484255__480.jpg', 'https://cdn.pixabay.com/photo/2020/05/25/02/44/golf-5216736__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/19/19/06/golf-ball-1605948__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/29/03/32/golf-ball-1867079__480.jpg']
golf.each do |pic|
  Post.create(user_id: 2, post_title: 'Rare golfball, limited edition.', post_body: 'Check out the picture and send me a message.', image_url: pic, price: rand(50..300), category_id: 5, sub_category_id: 28, category_name:'sports', sub_category_name: 'golf')
end

outdoors = ['https://cdn.pixabay.com/photo/2017/08/17/08/08/camp-2650359__480.jpg', 'https://cdn.pixabay.com/photo/2018/12/24/22/21/camping-3893598__480.jpg', 'https://cdn.pixabay.com/photo/2013/02/25/04/37/kodiak-85921__480.jpg', 'https://cdn.pixabay.com/photo/2013/02/21/04/48/mongolia-84133__480.jpg', 'https://cdn.pixabay.com/photo/2019/03/18/15/11/tent-4063320__480.png', 'https://cdn.pixabay.com/photo/2018/12/24/22/18/camping-3893584__480.jpg', 'https://cdn.pixabay.com/photo/2018/03/15/13/36/bike-3228237__480.jpg']
outdoors.each do |pic|
  Post.create(user_id: 2, post_title: 'Old tent', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(50..200), category_id: 5, sub_category_id: 29, category_name:'sports', sub_category_name: 'outdoors')
end

winter = ['https://cdn.pixabay.com/photo/2017/12/15/09/32/cross-country-skiing-3020748__480.jpg', 'https://cdn.pixabay.com/photo/2016/10/31/10/50/skis-1785285__480.jpg', 'https://cdn.pixabay.com/photo/2014/12/31/02/59/skis-584600__480.jpg', 'https://cdn.pixabay.com/photo/2016/01/17/20/51/ski-1145553__480.jpg', 'https://cdn.pixabay.com/photo/2017/02/06/11/53/skiing-2042683__480.jpg', 'https://cdn.pixabay.com/photo/2017/01/31/23/28/ski-2028185__480.png', 'https://cdn.pixabay.com/photo/2017/03/24/14/47/ski-2171335__480.jpg']
winter.each do |pic|
  Post.create(user_id: 2, post_title: 'Used skis', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(300..500), category_id: 5, sub_category_id: 30, category_name:'sports', sub_category_name: 'winter')
end

water = ['https://cdn.pixabay.com/photo/2017/06/10/22/27/diving-mask-2390958__480.jpg', 'https://cdn.pixabay.com/photo/2018/08/09/08/30/diving-3593972__480.jpg', 'https://cdn.pixabay.com/photo/2021/05/23/13/38/glasses-6276226__480.jpg', 'https://cdn.pixabay.com/photo/2017/06/10/22/23/diving-mask-2390950__480.jpg', 'https://cdn.pixabay.com/photo/2015/02/03/14/02/swim-goggles-622591__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/02/07/11/diving-mask-1562705__480.jpg', 'https://cdn.pixabay.com/photo/2023/01/14/17/52/ai-generated-7718724__480.jpg']
water.each do |pic|
  Post.create(user_id: 2, post_title: 'Swim goggles', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(5..30), category_id: 5, sub_category_id: 31, category_name:'sports', sub_category_name: 'water')
end
puts '->sports created'

puts 'creating vehicles'
car = ['https://cdn.pixabay.com/photo/2018/05/19/08/50/car-3412965__480.jpg', 'https://cdn.pixabay.com/photo/2015/04/16/03/35/okinawa-724985__480.jpg', 'https://cdn.pixabay.com/photo/2021/08/17/18/27/honda-6553834__480.jpg', 'https://cdn.pixabay.com/photo/2019/03/09/08/03/honda-4043784__480.jpg', 'https://cdn.pixabay.com/photo/2020/03/25/15/15/honda-4967605__480.jpg', 'https://cdn.pixabay.com/photo/2021/08/12/05/25/car-6539946__480.jpg', 'https://cdn.pixabay.com/photo/2017/08/07/00/28/red-2597961__480.jpg']
car.each do |pic|
  Post.create(user_id: 2, post_title: 'Honda for sale', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(900..9000), category_id: 6, sub_category_id: 32, category_name:'vehicles', sub_category_name: 'car')
end

motorcycle = ['https://cdn.pixabay.com/photo/2018/02/12/02/05/motorcycle-3147278__480.jpg', 'https://cdn.pixabay.com/photo/2018/10/29/19/14/motorcycle-3781800__480.jpg', 'https://cdn.pixabay.com/photo/2017/12/31/00/08/motorcycle-3051288__480.png', 'https://cdn.pixabay.com/photo/2017/01/31/15/22/art-2025018__480.png', 'https://cdn.pixabay.com/photo/2016/09/27/15/15/motorcycle-1698615__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/18/21/30/bike-1836962__480.jpg', 'https://cdn.pixabay.com/photo/2014/07/31/23/37/motorbike-407186__480.jpg']
motorcycle.each do |pic|
  Post.create(user_id: 2, post_title: 'Motorbike', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(400..10000), category_id: 6, sub_category_id: 33, category_name:'vehicles', sub_category_name: 'motorcycle')
end

truck = ['https://cdn.pixabay.com/photo/2017/09/13/18/01/isolated-2746379__480.png', 'https://cdn.pixabay.com/photo/2017/10/03/18/44/truck-2813648__480.jpg', 'https://cdn.pixabay.com/photo/2017/06/27/18/18/isolated-2448337__480.png', 'https://cdn.pixabay.com/photo/2016/09/25/18/29/nissan-1694345__480.jpg', 'https://cdn.pixabay.com/photo/2017/07/16/11/41/peugeot-203-2509032__480.png', 'https://cdn.pixabay.com/photo/2016/04/01/12/11/pickup-truck-1300585__480.png', 'https://cdn.pixabay.com/photo/2017/08/19/02/17/auto-2657095__480.png']
truck.each do |pic|
  Post.create(user_id: 2, post_title: 'Truck', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(400..10000), category_id: 6, sub_category_id: 34, category_name:'vehicles', sub_category_name: 'truck')
end
puts '->vehicles created'

puts 'creating boats'
sailboat = ['https://cdn.pixabay.com/photo/2016/06/22/16/18/sailing-boat-1473281__480.jpg', 'https://cdn.pixabay.com/photo/2020/01/19/10/43/sailboat-4777340__480.jpg', 'https://cdn.pixabay.com/photo/2016/06/22/16/22/sailing-vessel-1473316__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/05/18/17/sailboat-1572874__480.jpg', 'https://cdn.pixabay.com/photo/2015/09/21/17/53/sailboat-950352__480.jpg', 'https://cdn.pixabay.com/photo/2014/09/25/00/01/sailboat-459794__480.jpg', 'https://cdn.pixabay.com/photo/2015/09/22/19/00/ship-952292__480.jpg']
sailboat.each do |pic|
  Post.create(user_id: 2, post_title: 'Sailboat', post_body: 'Pretty old. Check out the picture and send me a message.', image_url: pic, price: rand(9000..80000), category_id: 8, sub_category_id: 37, category_name:'boats', sub_category_name: 'sailboat')
end

speedboat = ['https://cdn.pixabay.com/photo/2021/08/25/04/18/offshore-powerboat-racing-6572333__480.jpg', 'https://cdn.pixabay.com/photo/2015/06/13/12/02/powerboat-807975__480.jpg', 'https://cdn.pixabay.com/photo/2013/04/05/14/12/speedboat-100724__480.jpg', 'https://cdn.pixabay.com/photo/2015/06/27/03/34/speedboat-823229__480.jpg', 'https://cdn.pixabay.com/photo/2022/09/10/11/56/motorboat-7444885__480.jpg', 'https://cdn.pixabay.com/photo/2016/09/08/11/37/powerboat-1653985__480.jpg', 'https://cdn.pixabay.com/photo/2017/09/25/07/49/powerboat-2784250__480.jpg']
speedboat.each do |pic|
  Post.create(user_id: 2, post_title: 'Speedboat', post_body: 'Pretty fast. Check out the picture and send me a message.', image_url: pic, price: rand(9000..80000), category_id: 8, sub_category_id: 38, category_name:'boats', sub_category_name: 'speedboat')
end

yacht = ['https://cdn.pixabay.com/photo/2016/08/25/16/47/luxury-yacht-1620040__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/19/03/36/yacht-1604478__480.jpg', 'https://cdn.pixabay.com/photo/2017/10/01/18/48/trimaran-2806621__480.jpg', 'https://cdn.pixabay.com/photo/2015/11/10/11/51/montenegro-1036764__480.jpg', 'https://cdn.pixabay.com/photo/2015/02/16/15/10/motor-yacht-638390__480.jpg', 'https://cdn.pixabay.com/photo/2015/11/12/19/19/yacht-1040850__480.jpg', 'https://cdn.pixabay.com/photo/2018/06/17/17/00/yacht-3480913__480.jpg']
yacht.each do |pic|
  Post.create(user_id: 2, post_title: 'Luxus Yacht', post_body: 'Nice one. Check out the picture and send me a message.', image_url: pic, price: rand(1000000..10000000), category_id: 8, sub_category_id: 39, category_name:'boats', sub_category_name: 'yacht')
end



puts '->boats created'


# mal = ['', '', '', '', '', '', '']

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
