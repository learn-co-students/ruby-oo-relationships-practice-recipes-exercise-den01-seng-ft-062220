# User class of recipes

class User

  attr_reader :name
  @@all = []

  def initialize name
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_cards.map(&:recipe)
  end

  def add_recipe_card recipe, date, rating
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy ingredient
    Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select { |allergy|  allergy.user == self }
  end

  def top_three_recipes
    recipe_cards.max_by(3) { |recipe| recipe.rating }.map(&:recipe)
  end

  def most_recent_recipe
    recipe_cards.min_by { |recipe_card| recipe_card.date }.recipe
  end

  def recipe_cards
    RecipeCard.all.select { |card| card.user == self }
  end
end
