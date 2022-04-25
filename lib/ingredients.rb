require_relative 'recipes.rb'

class Ingredients
  attr_accessor :ingredients_list

  def initialize
    @recipes = Recipes.new
    @ingredients_list = []
  end

  def ingredients
    total = 1
    while total < 6 do
      input = gets.chomp
      ingredients_list << input.downcase.capitalize
      total += 1
    end
    @ingredients_list = ingredients_list.uniq
    return @ingredients_list
  end

  def choice
    @recipes.choices(@ingredients_list)
  end
end