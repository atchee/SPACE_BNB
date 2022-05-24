puts "Cleaning up database..."
Product.destroy_all
Genre.destroy_all
User.destroy_all
puts "Database cleaned"

genre_list = [
  "Iron planet",
  "Terrestrial rocky",
  "Gas giant",
  "Ice giant",
  "Planetary moon",
  "Dwarf planet"
]

genre_list.each do |name|
  genre = Genre.create!(name: name)
  p genre
  p 'created 1 genre'
end

user_list = [
  { first_name: "Buzz", last_name: "Eclair", date_of_birth: '1992-03-28', email: 'buzz@planetarydefense.com', password: 'password', password_confirmation: 'password' },
  { first_name: "ObiWan", last_name: "Kenobi", date_of_birth: '1934-04-08', email: 'realmaster@jedi.com', password: 'password', password_confirmation: 'password' },
  { first_name: "Leto", last_name: "Atreides", date_of_birth: '1940-10-10', email: 'spicyatreides@caladan.com', password: 'password', password_confirmation: 'password' },
  { first_name: "Freezer", last_name: "Cooler", date_of_birth: '1989-10-24', email: 'ruler@universe.com', password: 'password', password_confirmation: 'password' }
]

user_list.each do |user|
  u = User.create!(user)
  p u
  p 'created 1 user'
end

product_list = [
  { name: "Drop-Red gorgeous!", capacity: 19, description: "Terrific landscape, but don't go if you don't like sand!", price: 57, place: "solar system ", user: User.all.sample, genre: Genre.all.sample },
  { name: "Neptune to cheer you up when you'r feeling blue...", capacity: 19, description: "You think you have witnessed real blue skies and blue oceans? If you haven't been to Neptune yet, think again!", price: 68, place: "solar system", user: User.all.sample, genre: Genre.all.sample },
  { name: "Dominate the universe from the heights of Jupiter!", capacity: 19, description: "Perfect location for the sporty tourists, extra gravity will offer you challenges like you've never experienced before!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample },
  { name: "Loop around your dreams, best spot on Saturn!", capacity: 19, description: "Best place to admire the most beautifull celestial rings of the galaxy!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample },
  { name: "Best place to tan is on Mercure!", capacity: 19, description: "Hottest destination!", price: 126, place: "solar system",  user: User.all.sample, genre: Genre.all.sample }
]

product_list.each do |product|
  product = Product.create!(product)
  p product
  p 'created 1 product'
end
