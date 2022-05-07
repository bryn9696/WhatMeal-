require_relative 'recipes.rb'

class Ingredients
  attr_accessor :ingredients_list, :recipes

  def initialize
    @recipes = Recipes.new.ingredient
  end

  def self.ingredients(ingredients_list)
    # total = 1
    # while total < 6 do
    #   input = gets.chomp
    #   @ingredients_list << input.to_s.downcase.capitalize
    #   total += 1
    # end

    ing_list = []
    ingredients_list.each do |ing|
      ing_list << ing.to_s.downcase.capitalize
    end
    # p @recipes
    @ingredients_list = ing_list.uniq.sort
    p @ingredients_list
    i = self.dictionary(@ingredients_list)
    self.choice(i)
  end

  def self.dictionary(ingredients_list)
    @recipes = Recipes.new.ingredient
    spell_check = @recipes.uniq.sort     
    spell_check.each do |ing|
      i = 0
      if ing.include?(ingredients_list[i][0, 2])
        ingredients_list.delete_at(i)
        ingredients_list << ing
      end
      i += 1
    end  
    p ingredients_list
    spell_check.each do |ing|
      i = 0
      if ing.chars().sort == ingredients_list[i].chars().sort
        ingredients_list.delete(ingredients_list[i])
        ingredients_list << ing
      end
      i += 1
    end
    p ingredients_list.uniq.sort
  end

  def self.choice(ingredients_list)
    Recipes.new.choices(ingredients_list)
  end
end