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

p_1 = Product.new({ name: "Drop-Red gorgeous!", capacity: 19, description: "Terrific landscape, but don't go if you don't like sand!", price: 57, place: "solar system ", user: User.all.sample, genre: Genre.all.sample })
file = URI.open("https://a0.muscache.com/im/pictures/monet/Luxury-53719772/original/9e847b21-bb28-4eeb-a4ae-dfc1ff4c2147?im_w=1440")
p_1.photos.attach(io: file, filename: "img.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/monet/Luxury-53719772/original/563ffa10-9d14-42e3-9520-37133dc0b83a?im_w=1440")
p_1.photos.attach(io: file, filename: "mars1.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/monet/Luxury-53719772/original/c0fa5c8b-beb9-45ba-a20e-6c1b3f40c33f?im_w=720")
p_1.photos.attach(io: file, filename: "mars2.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/monet/Luxury-53719772/original/0ce8eafd-51a0-456a-b35c-cbe3a723be31?im_w=1440")
p_1.photos.attach(io: file, filename: "mars3.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/monet/Luxury-53719772/original/64f65389-96b3-4c5e-b8bf-7966dc16b55b?im_w=1440")
p_1.photos.attach(io: file, filename: "mars4.png", content_type: "image/png")
file = URI.open("https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/pia25190.jpeg")
p_1.photos.attach(io: file, filename: "mars5.png", content_type: "image/png")
file = URI.open("https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/pia24420.jpeg")
p_1.photos.attach(io: file, filename: "mars6.png", content_type: "image/png")
file = URI.open("https://images.pexels.com/photos/2440079/pexels-photo-2440079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
p_1.photos.attach(io: file, filename: "mars7.png", content_type: "image/png")
file = URI.open("https://images.omerlocdn.com/resize?url=https:%2F%2Fgcm-v2.omerlocdn.com%2Fproduction%2Fglobal%2Ffiles%2Fimage%2F7d1b876c-fa57-49c5-b98b-9e81b1f4ad21.jpg&stripmeta=true&width=1200&type=jpeg")
p_1.photos.attach(io: file, filename: "mars8.png", content_type: "image/png")
file = URI.open("https://www.alleedescuriosites.com/wp-content/uploads/2019/04/matt-damon-seul-sur-mars.jpg")
p_1.photos.attach(io: file, filename: "mars9.png", content_type: "image/png")
p_1.save!
p 'created 1 product'

p_2 = Product.new({ name: "Neptune to cheer you up when you'r feeling blue...", capacity: 19, description: "You think you have witnessed real blue skies and blue oceans? If you haven't been to Neptune yet, think again!", price: 68, place: "solar system", user: User.all.sample, genre: Genre.all.sample })
file = URI.open("https://images8.alphacoders.com/585/585646.png")
p_2.photos.attach(io: file, filename: "neptune.png", content_type: "image/png")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Neptune.jpg/280px-Neptune.jpg")
p_2.photos.attach(io: file, filename: "neptune1.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/1a43f0e6-9218-4cab-9929-104f78b00d63.jpg?im_w=1200")
p_2.photos.attach(io: file, filename: "neptune2.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/c1705b92-4d0e-45e5-b17e-b82f6c52c5f8.jpg?im_w=1200")
p_2.photos.attach(io: file, filename: "neptune3.png", content_type: "image/png")
file = URI.open("https://a0.muscache.com/im/pictures/476fb5e4-ab9b-4cf5-8237-f7de50d3e25f.jpg?im_w=1200")
p_2.photos.attach(io: file, filename: "neptune4.png", content_type: "image/png")
file = URI.open("http://imagebank.biz/wp-content/uploads/2014/02/82705.jpg")
p_2.photos.attach(io: file, filename: "neptune5.png", content_type: "image/png")
file = URI.open("https://www.lapsychoactive.com/wp-content/uploads/2017/12/photo-photo-paysage-libre-de-droit-3.jpg")
p_2.photos.attach(io: file, filename: "neptune6.png", content_type: "image/png")
file = URI.open("https://bgr.com/wp-content/uploads/2019/06/capture-17.jpg")
p_2.photos.attach(io: file, filename: "neptune7.png", content_type: "image/png")
file = URI.open("http://www.planete-astronomie.com/tl_files/photos/Neptune/1-La-planete-Neptune/PIA00051.jpg")
p_2.photos.attach(io: file, filename: "neptune8.png", content_type: "image/png")
file = URI.open("https://i1.wp.com/dans-la-lune.fr/wp-content/uploads/2022/03/proble-me-a-trois-corps.jpeg?resize=365%2C330")
p_2.photos.attach(io: file, filename: "neptune9.png", content_type: "image/png")
p_2.save!
p 'created 2 product'

p_3 = Product.new({ name: "Best place to tan is on Mercure!", capacity: 19, description: "Hottest destination!", price: 126, place: "solar system", user: User.all.sample, genre: Genre.all.sample })
file = URI.open("https://static.wikia.nocookie.net/lemondededisney/images/4/46/Mustafar.png/revision/latest?cb=20190801085105&path-prefix=fr")
p_3.photos.attach(io: file, filename: "mercure1.png", content_type: "image/png")
file = URI.open("https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/content/images/2019/lava_lake_erta_ale_volcano_ethiopia_c_jens-wolfram_erben.jpg?itok=ZEgHglbQ")
p_3.photos.attach(io: file, filename: "mercure2.png", content_type: "image/png")
file = URI.open("https://i.dailymail.co.uk/i/pix/2010/07/26/article-1297706-0A924822000005DC-544_634x423.jpg")
p_3.photos.attach(io: file, filename: "mercure3.png", content_type: "image/png")
file = URI.open("https://i1.sndcdn.com/artworks-BKR4wHfxyzCy0SBH-f3jOZg-t500x500.jpg")
p_3.photos.attach(io: file, filename: "mercure4.png", content_type: "image/png")
file = URI.open("https://static.hitek.fr/img/up_m/262351102/mustafarrogueone.jpg")
p_3.photos.attach(io: file, filename: "mercure5.png", content_type: "image/png")
file = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1ff5d8e5-1fd2-4461-8191-c7546cb10e41/dey1086-792ad690-89c6-44fd-b6f0-fc5b7eb38b44.jpg/v1/fill/w_1920,h_1188,q_75,strp/planet_mustafar_concept_art__star_wars__by_sorexoff_dey1086-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzFmZjVkOGU1LTFmZDItNDQ2MS04MTkxLWM3NTQ2Y2IxMGU0MVwvZGV5MTA4Ni03OTJhZDY5MC04OWM2LTQ0ZmQtYjZmMC1mYzViN2ViMzhiNDQuanBnIiwiaGVpZ2h0IjoiPD0xMTg4Iiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvMWZmNWQ4ZTUtMWZkMi00NDYxLTgxOTEtYzc1NDZjYjEwZTQxXC9zb3JleG9mZi00LnBuZyIsIm9wYWNpdHkiOjk1LCJwcm9wb3J0aW9ucyI6MC40NSwiZ3Jhdml0eSI6ImNlbnRlciJ9fQ.t2R3p2jPgRQNRHOJBYcsMTiWDmbzg6oPBWM-9ShEkkM")
p_3.photos.attach(io: file, filename: "mercure6.png", content_type: "image/png")
file = URI.open("https://www.fubiz.net/wp-content/uploads/2016/09/housedesert0-900x600.jpg")
p_3.photos.attach(io: file, filename: "mercure7.png", content_type: "image/png")
file = URI.open("https://i.pinimg.com/originals/81/71/78/817178c2f23dc0b0d0fcd66f63c59a5b.jpg")
p_3.photos.attach(io: file, filename: "mercure8.png", content_type: "image/png")
file = URI.open("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4bb40a07-38c2-4a27-93ca-fb295abc24ab/d173a38-c538603a-ceab-4285-9547-bb92ae903a1d.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzRiYjQwYTA3LTM4YzItNGEyNy05M2NhLWZiMjk1YWJjMjRhYlwvZDE3M2EzOC1jNTM4NjAzYS1jZWFiLTQyODUtOTU0Ny1iYjkyYWU5MDNhMWQuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.WF9wtI_5G9u_19Apj7umnAF5e1FltQulfBdjbgAST_M")
p_3.photos.attach(io: file, filename: "mercure9.png", content_type: "image/png")
p_3.save!
p "created 3 product"

p_4 = Product.new({ name: "Loop around your dreams, best spot on Saturn!", capacity: 19, description: "Best place to admire the most beautifull celestial rings of the galaxy!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample })
file = URI.open("https://starwalk.space/gallery/images/july-2020-saturn-at-opposition-seize-the-moment/1920x1080.jpg")
p_4.photos.attach(io: file, filename: "saturn1.png", content_type: "image/png")
file = URI.open("http://www.shinykittenstickers.com/wp-content/uploads/2015/03/by-everlite.jpg")
p_4.photos.attach(io: file, filename: "saturn2.png", content_type: "image/png")
file = URI.open("https://i.pinimg.com/originals/ff/02/42/ff0242dbc36bbfccf55f4922aebc8fcc.jpg")
p_4.photos.attach(io: file, filename: "saturn3.png", content_type: "image/png")
file = URI.open("https://griffithobservatory.org/wp-content/uploads/2021/03/saturn_LD.jpg")
p_4.photos.attach(io: file, filename: "saturn4.png", content_type: "image/png")
file = URI.open("https://w0.peakpx.com/wallpaper/317/1012/HD-wallpaper-saturn-planets-stars-cool-space-fun.jpg")
p_4.photos.attach(io: file, filename: "saturn5.png", content_type: "image/png")
file = URI.open("https://i.pinimg.com/originals/6c/36/04/6c3604135943115806d1b83627b70109.jpg")
p_4.photos.attach(io: file, filename: "saturn6.png", content_type: "image/png")
file = URI.open("https://cdna.artstation.com/p/assets/images/images/015/717/134/large/michael-pedro-michael-pedro-ringworld.jpg?1549376493")
p_4.photos.attach(io: file, filename: "saturn7.png", content_type: "image/png")
file = URI.open("https://www.yankodesign.com/images/design_news/2020/08/space-homes/08-Interstellar-Labs_EBIOS_Mars2.jpg")
p_4.photos.attach(io: file, filename: "saturn8.png", content_type: "image/png")
file = URI.open("https://qph.fs.quoracdn.net/main-qimg-79757e73d6292d41227a687a3324dfc3-lq")
p_4.photos.attach(io: file, filename: "saturn9.png", content_type: "image/png")
p_4.save!
p "created 4 product"

p_4 = Product.new({ name: "Dominate the universe from the heights of Jupiter!", capacity: 19, description: "Perfect location for the sporty tourists, extra gravity will offer you challenges like you've never experienced before!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample })
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659241/production/un-impressionnant-nuage-de-sable-survole-l-ouest-de-l-europe-1647321036844_1280_zmfkub.webp")
p_4.photos.attach(io: file, filename: "jupiter1.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659240/production/fabuleux-coucher-de-soleil-splendide-paysage-sunset-plage-images-photos-gratuites-1560x1040_f1kogl.jpg")
p_4.photos.attach(io: file, filename: "jupiter2.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659240/production/jupiter_1_h1gibp.jpg")
p_4.photos.attach(io: file, filename: "jupiter3.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659240/production/f329f8fbf7_75071_etrangeexo_qblgmm.jpg")
p_4.photos.attach(io: file, filename: "jupiter4.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659224/development/f329f8fbf7_75071_etrangeexo_trm15u.jpg")
p_4.photos.attach(io: file, filename: "jupiter5.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659225/development/b21ea19208ecb7b999ec1fc9064cb4e0_hjaes0.jpg")
p_4.photos.attach(io: file, filename: "jupiter6.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659225/development/jupiter_1_yle2pb.jpg")
p_4.photos.attach(io: file, filename: "jupiter7.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659387/development/b21ea19208ecb7b999ec1fc9064cb4e0_u5wvys.jpg")
p_4.photos.attach(io: file, filename: "jupiter8.png", content_type: "image/png")
file = URI.open("https://res.cloudinary.com/dryhvwfvf/image/upload/v1653659387/development/Astronaut-landing-on-jupiter_kyhqtt.webp")
p_4.photos.attach(io: file, filename: "jupiter9.png", content_type: "image/png")
p_4.save!
p "created 5 product"


  # {  },
  # { name: "Dominate the universe from the heights of Jupiter!", capacity: 19, description: "Perfect location for the sporty tourists, extra gravity will offer you challenges like you've never experienced before!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample },
  # { name: "Loop around your dreams, best spot on Saturn!", capacity: 19, description: "Best place to admire the most beautifull celestial rings of the galaxy!", price: 57, place: "solar system", user: User.all.sample, genre: Genre.all.sample },
  # { name: "Best place to tan is on Mercure!", capacity: 19, description: "Hottest destination!", price: 126, place: "solar system",  user: User.all.sample, genre: Genre.all.sample }


# product_list.each do |product|
#   product = Product.new(product)
#   file = URI.open("https://source.unsplash.com/random/350x253/?espace")
#   product.photos.attach(io: file, filename: "img.png", content_type: "image/png")
#   product.save!
#   p 'created 1 product'
# end
