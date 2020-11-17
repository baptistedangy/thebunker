# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



U1 = User.new(email: "aida@test.org", password: "lewagon")
U2 = User.new(email: "baptiste@test.org", password: "lewagon")
U3 = User.new(email: "bastien@test.org", password: "lewagon")


B1.user = U1
B2.user = U1
B3.user = U1
B4.user = U1
B5.user = U2
B6.user = U2
B7.user = U2
B8.user = U2
B9.user = U3
B10.user = U3


B1 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B2 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B3 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B4 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B5 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B6 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B7 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B8 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B9 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )
B10 = Bunker.new( name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 100, capacity: 4, description: "blabla", photo: "url" )

