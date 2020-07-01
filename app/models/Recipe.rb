# Recipe class

class Recipe

  attr_reader :name
  @@all = []

  def initialize name
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    all.max_by { |recipe| recipe.users }
  end

  def users
    RecipeCard.all.select { |card| card.recipe == self }.map(&:user)
  end

  def ingredients
    RecipeIngredient.all.select { |ingredient| ingredient.recipe == self }.map(&:ingredient)
  end

  def allergens
    ingredients & Allergy.ingredients
  end

  def add_ingredients array
    array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end
end
