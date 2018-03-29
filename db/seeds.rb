# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# buffer = open(url).read
# result = JSON.parse(buffer)


# # result.each do |cocktail|
# #   cocktail(strIngredient1:)
# #   puts Ingredient.create(name: "#{cocktail}")
# puts result

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "oranges")
Ingredient.create(name: "banana")
Ingredient.create(name: "salt")

Cocktail.create(name: "caipirinha")
Cocktail.create(name: "caipirinha_special")
Cocktail.create(name: "caipirinha_XXL")

Dose.create(description: "6cl of lemon juice", cocktail: Cocktail.find_by_name("caipirinha"), ingredient: Ingredient.find_by_name("lemon"))
Dose.create(description: "2 cubes of Ice", cocktail: Cocktail.find_by_name("daikiri"), ingredient: Ingredient.find_by_name("ice"))
Dose.create(description: "12 mint leaves", cocktail: Cocktail.find_by_name("Martini"), ingredient: Ingredient.find_by_name("mint leaves"))
Dose.create(description: "3cl of orange juice", cocktail: Cocktail.find_by_name("caipirinha"), ingredient: Ingredient.find_by_name("oranges"))
Dose.create(description: "1 cubes of Ice", cocktail: Cocktail.find_by_name("caipirinha_special"), ingredient: Ingredient.find_by_name("ice"))
Dose.create(description: "2 mint leaves", cocktail: Cocktail.find_by_name("caipirianha_XXL"), ingredient: Ingredient.find_by_name("mint leaves"))

