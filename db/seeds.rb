# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Bunker.destroy_all
User.destroy_all
puts "creating users"
U1 = User.create(email: "aida@test.org", password: "lewagon")
U2 = User.create(email: "baptiste@test.org", password: "lewagon")
U3 = User.create(email: "bastien@test.org", password: "lewagon")

puts "creating bunkers"
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "The Basic Bunker", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U1 )
bunker.photo.attach(io: file, filename: "bunker1")
bunker.save
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "Bunker 2", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U1 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "Bunker 3", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U2 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "Bunker 4", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U2 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "Bunker 5", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U3 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save
file = URI.open("https://compote.slate.com/images/f547eb84-d4e1-497b-bc70-aafae930c922.jpeg")
bunker = Bunker.new( name: "Bunker 6", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", user: U3 )
bunker.photo.attach(io: file, filename: "bunker2")
bunker.save
