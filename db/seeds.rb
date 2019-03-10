# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Setting up...'

# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients = JSON.parse(open(url).read)

# limit = ingredients['drinks'].length

puts 'Cleaning database...'
Ingredient.destroy_all

# 12.times do
#   random_number = (0..limit).to_a.sample
#   ingredient = ingredients['drinks'][random_number]

#   ingredient = ingredient.values[0] unless ingredient.nil?
#   Ingredient.create!(name: ingredient)
# end

Ingredient.create(name: 'Beer')
Ingredient.create(name: 'Champagne')
Ingredient.create(name: 'Gin')
Ingredient.create(name: 'Rum')
Ingredient.create(name: 'Tequila')
Ingredient.create(name: 'Vodka')

Ingredient.create(name: 'Coca-Cola')
Ingredient.create(name: 'Ginger ale')
Ingredient.create(name: 'Tonic water')

Ingredient.create(name: 'Apple juice')
Ingredient.create(name: 'Orange juice')
Ingredient.create(name: 'Pineapple juice')

puts 'Finished!'
