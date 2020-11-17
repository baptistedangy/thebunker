# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bunker.destroy_all
User.destroy_all
puts "creating users"
U1 = User.create(email: "aida@test.org", password: "lewagon")
U2 = User.create(email: "baptiste@test.org", password: "lewagon")
U3 = User.create(email: "bastien@test.org", password: "lewagon")

puts "creating bunkers"
B1 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U1 )
B2 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U1 )
B3 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U1 )
B4 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U1 )
B5 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U2 )
B6 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U2 )
B7 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U2 )
B8 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U3 )
B9 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U3 )
B10 = Bunker.create( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url", user: U3 )

