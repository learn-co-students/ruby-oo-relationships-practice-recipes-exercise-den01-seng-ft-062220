# joiner between User and Ingredient

class Allergy

  attr_reader :user, :ingredient
  @@all = []

  def initialize user, ingredient
    @@all << self
    @user = user
    @ingredient = ingredient
  end

  def self.all
    @@all
  end

  def self.ingredients
    all.map(&:ingredient)
  end
end
