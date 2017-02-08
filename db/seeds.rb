# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

bristol = Restaurant.new(name: "Epicure", category: "french", address: "75008 Paris")
puts ("bristol restaurant created")
yummy = Review.new(content: "yummy yummy", rating: 4)
puts ("yummy review created")

pizzaMama = Restaurant.new(name: "PizzaMama", category: "french", address: "75005 Paris")
amazing = Review.new(content: "yummy yummy", rating: 5)

pastaPapa = Restaurant.new(name: "PastaPapa", category: "french", address: "75006 Paris")
superyummy = Review.new(content: "yummy yummy", rating: 5)

bibimbap = Restaurant.new(name: "Bibimbap", category: "french", address: "75011 Paris")
bof = Review.new(content: "yummy yummy", rating: 1)

sushiBaby = Restaurant.new(name: "SushiBaby", category: "french", address: "75001 Paris")
miam = Review.new(content: "yummy yummy", rating: 3)

bristol.save
pizzaMama.save
pastaPapa.save
bibimbap.save
sushiBaby.save

yummy.save
amazing.save
superyummy.save
bof.save
miam.save

miam.restaurant = bristol
