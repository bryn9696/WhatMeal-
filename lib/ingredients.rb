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
      @ingredients_list << input.to_s.downcase.capitalize
      total += 1
    end
    @ingredients_list = @ingredients_list.uniq
    return @ingredients_list
  end

  def dictionary
    spell_check = ["Cheese", "Ham", "Bread", "Pasta", "Tomatoes"]
    spell_check.each do |ing|
      p @ingredients_list[0]
      p spell_check[0]
      i = 0
      if ing.include?(@ingredients_list[i]) 
        @ingredients_list.delete_at(i)
        @ingredients_list << ing
      end
      i += 1
    end
    p @ingredients_list
  end

  def choice
    @recipes.choices(@ingredients_list)
  end
end