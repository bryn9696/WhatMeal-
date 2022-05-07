require_relative 'recipes.rb'

class Ingredients
  attr_accessor :ingredients_list

  def initialize
    @recipes = Recipes.new
  end

  def self.ingredients(ingredients_list)
    # total = 1
    # while total < 6 do
    #   input = gets.chomp
    #   @ingredients_list << input.to_s.downcase.capitalize
    #   total += 1
    # end
    @ingredients_list = ingredients_list.uniq.sort
  end

  def self.dictionary(ingredients_list)
    spell_check = @recipes.ingredients_list   
    spell_check.each do |ing|
      i = 0
      if ing.include?(@ingredients_list[i][0, 2])
        @ingredients_list.delete_at(i)
        @ingredients_list << ing
      end
      i += 1
    end  
    spell_check.each do |ing|
      i = 0
      if ing.chars().sort == @ingredients_list[i].chars().sort
        @ingredients_list.delete(@ingredients_list[i])
        @ingredients_list << ing
      end
      i += 1
    end
    p @ingredients_list.uniq.sort
  end

  def choice(ingredients_list)
    @recipes.choices(ingredients_list)
  end
end