# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@ship = Ship.create({name: "The Jolly Rodger"})
@alex = Pirate.create({first_name: "Alex", last_name: "Bazlinton", ship: @ship, join_date: DateTime.now().to_s})
@sky = Pirate.create({first_name: "Sky", last_name: "Su", ship: @ship, join_date: DateTime.now().to_s})
@raid = Raid.create({location: "Edinburgh", loot: 5_000})
@alex.raids << @raid
