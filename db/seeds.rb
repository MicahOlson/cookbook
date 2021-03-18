# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Recipe.destroy_all
Tag.destroy_all

7.times do |t|
  recipe = Recipe.create!(title: Faker::Food.unique.dish, instruction_set: Faker::Food.unique.description, ingredient_set: Faker::Food.unique.ingredient)
  4.times do |t|
    tag = Tag.create!(tag: Faker::Restaurant.unique.type)
    recipe.tags << tag
  end
end

p "Created #{Recipe.count} recipes"
