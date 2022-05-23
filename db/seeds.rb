genre_list = [
  "Iron planet",
  "Terrestrial rocky",
  "Gas giant",
  "Ice giant",
  "Planetary moon",
  "Dwarf planet"
]

genre_list.each do |name|
  Genre.create(name: name)
end

user_list = [
  { first_name: "Buzz", last_name: "Eclair", date_of_birth: '1992-03-28', email: 'buzz@planetarydefense.com', password: 'pass' },
  { first_name: "ObiWan", last_name: "Kenobi", date_of_birth: '1934-04-08', email: 'realmaster@jedi.com', password: 'pass' },
  { first_name: "Leto", last_name: "Atreides", date_of_birth: '1940-10-10', email: 'spicyatreides@caladan.com', password: 'pass' },
  { first_name: "Freezer", last_name: "Cooler", date_of_birth: '1989-10-24', email: 'ruler@universe.com', password: 'pass' }
]

user_list.each do |user|
  User.create(user)
end

product_list = [
  { name: "Drop-Red gorgeous!", capacity: "6 Md", description: "Terrific landscape, but don't go if you don't like sand!", price: "50M credits", place: "solar system " },
  { name: "Neptune to cheer you up when you'r feeling blue...", capacity: "7 Md", description: "You think you have witnessed real blue skies and blue oceans? If you haven't been to Neptune yet, think again!", price: "80M credits", place: "solar system" },
  { name: "Dominate the universe from the heights of Jupiter!", capacity: "14 Md", description: "Perfect location for the sporty tourists, extra gravity will offer you challenges like you've never experienced before!", price: "250M credits", place: "solar system" },
  { name: "Loop around your dreams, best spot on Saturn!", capacity: "10 Md", description: "Best place to admire the most beautifull celestial rings of the galaxy!", price: "180M credits", place: "solar system" },
  { name: "Best place to tan is on Mercure!", capacity: "3 Md", description: "Hottest destination!", price: "120M credits", place: "solar system" }
]

product_list.each do |product|
  Product.create(product)
end
