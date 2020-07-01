require_relative '../config/environment.rb'

sam = User.new('Sam')
morgan = User.new('Morgan')
ian = User.new('Ian')

carbonara = Recipe.new('Carbonara')
amatriciana = Recipe.new('Amatriciana')

carbonara_ingredients = []

carbonara_ingredients << spaghetti = Ingredient.new('spaghetti')
carbonara_ingredients << guanciale = Ingredient.new('guanciale')
carbonara_ingredients << egg = Ingredient.new('egg')
carbonara_ingredients << romano = Ingredient.new('romano')
carbonara_ingredients << pepper = Ingredient.new('pepper')

white_wine = Ingredient.new('white wine')
tomato = Ingredient.new('tomato')

carbonara.add_ingredients carbonara_ingredients

amatriciana.add_ingredients [spaghetti, guanciale, romano, white_wine, pepper]

sam.add_recipe_card(carbonara, '01-01-20', 5)
sam.add_recipe_card(amatriciana, '01-05-20', 4)
sam.declare_allergy(egg)
morgan.add_recipe_card(carbonara, '01-07-20', 5)
morgan.declare_allergy(guanciale)
ian.add_recipe_card(carbonara, '01-02-20', 5)



binding.pry
