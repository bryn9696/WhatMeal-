require_relative 'recipes.rb'

class Ingredients
  attr_accessor :ingredients_list

  def initialize
    @recipes = Recipes.new
  end
  
  def ingredients
    @ingredients_list = []
    total = 1
    while total < 6 do
      input = gets.chomp
      ingredients_list << input
      total += 1
    end
    @ingredients_list = ingredients_list.uniq
    p @ingredients_list
    return @ingredients_list
  end

  def choice
    @recipes.choices(@ingredients_list)
  end
end