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

puts 'creating bicycles...'
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

Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/1057566460/photo/mountain-biker-ride-down-from-hill-close-up-wheel-image-active-and-sport-leisure-concept.jpg?s=612x612&w=0&k=20&c=nsOAjqrMnaRD3mDhE-H2KzdVybi55SN05aimogjgNsI=', price: 400, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/468267742/photo/riding-a-fast-single-trail-in-the-forest.jpg?s=612x612&w=0&k=20&c=V7ZlJBck-1L0RRMDKQUvhGoznKJIX3qGnBYSXYI5hec=', price: 550, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/619534004/photo/group-of-cyclists-on-sports-mountainbike.jpg?s=612x612&w=0&k=20&c=51RtA095H7LXjU624gxUatS4Fgb2H5zXjhXCMsV4sKQ=', price: 300, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/683719516/photo/man-riding-a-mountain-bike.jpg?s=612x612&w=0&k=20&c=Adh1H0OAehx1BqVJh_Qagl7EdjocotWiNlHlZKWi4Uk=', price: 640, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/677495104/photo/rambling-through-the-countryside.jpg?s=612x612&w=0&k=20&c=20iPm7iS-6Xm_RvfzkJapuV8v2dCmqrmJp2_0uFe4nQ=', price: 590, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/677495104/photo/rambling-through-the-countryside.jpg?s=612x612&w=0&k=20&c=20iPm7iS-6Xm_RvfzkJapuV8v2dCmqrmJp2_0uFe4nQ=', price: 490, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/165567864/photo/close-up-of-a-man-on-mountain-bike-riding-on-trail.jpg?b=1&s=170667a&w=0&k=20&c=aHElJL3DXlD5LHRDKIECWVl--29M9958XDC6i5GAi-s=', price: 800, category_id: 1, sub_category_id: 11)
Post.create(user_id: 1, post_title: 'Cool offroad bicyle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://media.istockphoto.com/id/1194926585/photo/hardtail-mountain-bike.jpg?b=1&s=170667a&w=0&k=20&c=BQZxOdNzCjwZ6IXSVpI1knmJeBvs495e9ztS7VZorHM=', price: 900, category_id: 1, sub_category_id: 11)

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/22/road-cycling-3469428__480.jpg', price: 400, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/10/19/17/57/race-bike-5668516__480.jpg', price: 550, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/08/07/11/44/racer-bike-2602969__480.jpg', price: 300, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2020/09/04/12/38/tour-de-france-5543967__480.jpg', price: 640, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/09/17/11/road-bike-1812217__480.jpg', price: 590, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/30/road-cycling-3469449__480.jpg', price: 490, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/06/11/21/30/road-cycling-3469449__480.jpg', price: 800, category_id: 1, sub_category_id: 12)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2013/12/24/12/30/bike-233343__480.jpg', price: 900, category_id: 1, sub_category_id: 12)

Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2022/01/19/19/41/san-francisco-6950837__480.jpg', price: 400, category_id: 1, sub_category_id: 13)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2018/01/06/23/25/snow-3066167__480.jpg', price: 550, category_id: 1, sub_category_id: 13)
Post.create(user_id: 1, post_title: 'Cool bicycle for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2022/07/24/19/42/bike-7342379__480.png.jpg', price: 300, category_id: 1, sub_category_id: 13)
puts '-> bicycles created'

puts 'creating electronics'
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241__480.jpg', price: 400, category_id: 2, sub_category_id: 14)
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/29/06/18/home-office-1867761__480.jpg', price: 400, category_id: 2, sub_category_id: 14)
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/06/28/05/10/laptop-1483974__480.jpg', price: 400, category_id: 2, sub_category_id: 14)
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761__480.jpg', price: 400, category_id: 2, sub_category_id: 14)
Post.create(user_id: 2, post_title: 'PC for sale. Like new.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196__480.jpg', price: 400, category_id: 2, sub_category_id: 14)

Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/04/30/05/04/camera-1362419__480.jpg', price: 400, category_id: 2, sub_category_id: 15)
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/03/07/00/01/photo-camera-1241441__480.jpg', price: 400, category_id: 2, sub_category_id: 15)
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/29/14/53/camera-431119__480.jpg', price: 400, category_id: 2, sub_category_id: 15)
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/04/22/10/44/camera-2251051__480.jpg', price: 400, category_id: 2, sub_category_id: 15)
Post.create(user_id: 2, post_title: 'Camera for sale.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/04/14/13/15/digital-camera-33879__480.png', price: 400, category_id: 2, sub_category_id: 15)

Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2012/04/13/13/00/flat-screen-32307__480.png', price: 400, category_id: 2, sub_category_id: 16)
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/30/08/46/living-room-1872192__480.jpg', price: 400, category_id: 2, sub_category_id: 16)
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/02/07/20/58/tv-627876__480.jpg', price: 400, category_id: 2, sub_category_id: 16)
Post.create(user_id: 2, post_title: 'Almost new TV.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/08/28/00/57/tv-1625228__480.jpg', price: 400, category_id: 2, sub_category_id: 16)

Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2017/08/10/03/01/washing-machine-2617514__480.jpg', price: 400, category_id: 2, sub_category_id: 17)
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2019/04/29/00/39/washing-4164831__480.jpg', price: 400, category_id: 2, sub_category_id: 17)
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/11/08/14/13/switch-1033640__480.jpg', price: 400, category_id: 2, sub_category_id: 17)
Post.create(user_id: 2, post_title: 'Washing machine. Good condition.', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/10/31/18/50/washing-machine-1786385__480.png', price: 400, category_id: 2, sub_category_id: 17)

Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/11/19/21/14/glasses-1052023__480.jpg', price: 400, category_id: 2, sub_category_id: 18)
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2015/02/02/11/08/office-620817__480.jpg', price: 400, category_id: 2, sub_category_id: 18)
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2016/11/20/08/33/camera-1842202__480.jpg', price: 400, category_id: 2, sub_category_id: 18)
Post.create(user_id: 2, post_title: 'iphone for sale', post_body: 'Very little used. Come check it out.', image_url: 'https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__480.jpg', price: 400, category_id: 2, sub_category_id: 18)
puts '-> electronics created'

puts 'creating home'
furniture = ['https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221__480.jpg', 'https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156__480.jpg', 'https://cdn.pixabay.com/photo/2014/07/10/17/17/bedroom-389254__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/19/13/06/bed-1839183__480.jpg']
furniture.each do |pic|
  Post.create(user_id: 2, post_title: 'bed for sale', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 3, sub_category_id: 19)
end

mal = ['', '', '', '']
lamps = ['https://cdn.pixabay.com/photo/2022/08/17/02/23/edison-bulb-7391388__480.jpg', 'https://cdn.pixabay.com/photo/2017/12/27/16/32/lantern-3043042__480.jpg', 'https://cdn.pixabay.com/photo/2016/08/18/20/05/light-bulbs-1603766__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/21/18/20/bright-1847006__480.jpg']
lamps.each do |pic|
  Post.create(user_id: 2, post_title: 'beautiful lamp', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 3, sub_category_id: 20)
end

kitchen = ['https://cdn.pixabay.com/photo/2015/05/02/17/05/cook-750142__480.jpg', 'https://cdn.pixabay.com/photo/2014/11/24/14/39/potatoes-544073__480.jpg', 'https://cdn.pixabay.com/photo/2014/11/24/14/35/pot-544071__480.jpg', 'https://cdn.pixabay.com/photo/2013/07/12/12/53/cooking-pot-146459__480.png']
kitchen.each do |pic|
  Post.create(user_id: 2, post_title: 'pot for sale', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 3, sub_category_id: 21)
end
puts '->home created'

puts 'creating pets'
bird = ['https://cdn.pixabay.com/photo/2018/08/12/16/59/parrot-3601194__480.jpg', 'https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453__480.jpg', 'https://cdn.pixabay.com/photo/2016/11/23/18/27/hummingbird-1854225__480.jpg', 'https://cdn.pixabay.com/photo/2017/09/16/19/33/parrot-2756488__480.jpg']
bird.each do |pic|
  Post.create(user_id: 2, post_title: 'funny bird', post_body: 'Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 22)
end

cat = ['https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__480.jpg', 'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262__480.jpg', 'https://cdn.pixabay.com/photo/2017/11/14/13/06/kitty-2948404__480.jpg', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720__480.jpg']
cat.each do |pic|
  Post.create(user_id: 2, post_title: 'cute kitten', post_body: 'Very little used. Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 23)
end

dog = ['https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__480.jpg', 'https://cdn.pixabay.com/photo/2015/11/17/13/13/bulldog-1047518__480.jpg', 'https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374__480.jpg', 'https://cdn.pixabay.com/photo/2015/07/09/19/32/dog-838281__480.jpg']
dog.each do |pic|
  Post.create(user_id: 2, post_title: 'adopt a dog', post_body: 'Come check it out.', image_url: pic, price: 400, category_id: 4, sub_category_id: 24)
end

puts '->pets created'


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
