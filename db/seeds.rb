# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  i = Ingredient.new(
    name: Faker::Food.ingredient,
    cost: rand(5..10).to_i,
    description: Faker::StarWars.quote,
    quantity: rand(50..100).to_i,
    quantity_measurement: Ingredient::MEASUREMENT.sample
    )
  i.save
end

5.times do
  c = Cocktail.new(
    name: Faker::Food.dish,
    price: rand(10..100).to_i,
    description: Faker::Food.spice,
    alcohol: [true,false].sample
    )
  c.save
end


for i in 0..5
  5.times do
      d = Dose.new(
        description: Faker::Food.measurement,
        quantity: rand(1..10).to_i
      )
      d.cocktail = Cocktail.all[i]
      d.ingredient = Ingredient.all.sample
      d.save
  end
end
