require 'open-uri'
require 'json'


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drink_serialized = open(url).read
drinks = JSON.parse(drink_serialized)
drinks_select = drinks["drinks"]


drinks_select.each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end

