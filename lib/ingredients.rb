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
    @ingredients_list = @ingredients_list.uniq.sort
  end

  def dictionary
    spell_check = @recipes.ingredients.uniq.sort   
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
    # @ingredients_list = @ingredients_list.uniq.sort

    # n = spell_check.length
    # @ingredients_list.each do |ing|
    #   ind = 0
    #   ing_length = 0
    #   spell_check.each do |og|
    #     if og != ing  
    #       ing_length += 1
    #       p "#{@ingredients_list.delete(ing)} #{ing_length}"
    #     end
    #   end
    #   ind += 1
    # end
    p @ingredients_list.uniq.sort
  end

  def choice
    @recipes.choices(@ingredients_list)
  end
end