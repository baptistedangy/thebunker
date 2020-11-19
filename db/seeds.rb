# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "date"
Booking.destroy_all
Bunker.destroy_all
User.destroy_all

puts "creating users"
U1 = User.create(email: "aida@test.org", password: "lewagon")
U2 = User.create(email: "baptiste@test.org", password: "lewagon")
U3 = User.create(email: "bastien@test.org", password: "lewagon")



puts "creating bunkers"
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "The Basic Bunker", address: "18 rue de la Roquette, Paris", price: 20, capacity: 4, description: "Good for kids", user: U1 )
bunker.photo.attach(io: file, filename: "bunker1")
bunker.save
B1 = Bunker.last

file = URI.open("https://thbr.figarocms.net/external/aEtSx1mTk8myR71CiAohZ5h-88Y=/720x0/filters:strip_icc()/https%3A%2F%2Fproprietes.lefigaro.fr%2Findicateur%2Fimages%2FPDF%2FCMS%2Factualites%2F90548588%2F1451921395.9.jpg")
bunker = Bunker.new( name: "The Luxuary Bunker", address: "Grand Ave, Farringdon, London", price: 300, capacity: 10, description: "For isolated pool parties", user: U1 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save


file = URI.open("https://www.idealwine.net/wp-content/uploads/2016/02/cave-622x311.jpg")
bunker = Bunker.new( name: "The Wine Bunker", address: "87 quai des Queries, Bodeaux", price: 100, capacity: 2, description: "Joyful Survivalism", user: U2 )
bunker.photo.attach(io: file, filename: "bunker3")
bunker.save
file = URI.open("https://image.shutterstock.com/image-photo/round-guerrilla-army-bunker-eastern-600w-1437847907.jpg")
bunker = Bunker.new( name: "The Woods Bunker", address: 'ul. "Boyansko ezero" 3, 1616 Bojana, Sofia, Bulgarie', price: 40, capacity: 4, description: "Better be hidden", user: U2 )
bunker.photo.attach(io: file, filename: "bunker4")
bunker.save
file = URI.open("https://journalduluxe.fr/wp-content/uploads/2016/04/bunker-de-luxe-e1459522023761.jpg")
bunker = Bunker.new( name: "The Selfish Bunker", address: "103 N St Joseph St, Gonzales, TX 78629, États-Unis", price: 300, capacity: 4, description: "East Houston serene, private, secure, quiet luxuary bunker. Fully equiped to survive a pandemic", user: U3 )
bunker.photo.attach(io: file, filename: "bunker5")
bunker.save
file = URI.open("http://www.musee-art-industrie.saint-etienne.fr/sites/default/files/styles/large/public/armes_salles_17_1024x768.jpg")
bunker = Bunker.new( name: "The Warrior Bunker", address: "6200 Hermann Park Dr, Houston, TX 77030, États-Unis", price: 200, capacity: 3, description: "Always be prepared", user: U3 )
bunker.photo.attach(io: file, filename: "bunker6")
bunker.save

puts "creating bookings"
booking = Booking.new( nb_participants: 4, start_date: Date.new(2020,8,20), end_date: Date.new(2020,8,22), user: U2, bunker: B1)
booking.save






