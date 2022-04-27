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
    # spell_check.each do |ing|
      p @ingredients_list[0]
      p spell_check[0]
      if spell_check[0].include?(@ingredients_list[0]) 
        @ingredients_list.delete_at(0)
        @ingredients_list << spell_check[0]
      end
    # end
    p @ingredients_list
  end

  def choice
    @recipes.choices(@ingredients_list)
  end
end