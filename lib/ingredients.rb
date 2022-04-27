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
    return @ingredients_list
  end

  def dictionary
    spell_check = ["Bread", "Cheese", "Ham", "Pasta", "Tomatoes"]
    spell_check.each do |ing|
      i = 0
      if ing.include?(@ingredients_list[i]) 
        @ingredients_list.delete_at(i)
        @ingredients_list << ing
      end
    end
    p @ingredients_list
    if spell_check[0].chars().sort == @ingredients_list[0].chars().sort
      @ingredients_list.delete(@ingredients_list[0])
      @ingredients_list << spell_check[0]
    end
    p "#{@ingredients_list} 1"
    # if spell_check[1].chars().sort == "Cehese".chars().sort
    #   @ingredients_list.delete("Cehese")
    #     @ingredients_list << spell_check[1]
    # end
    # p "#{@ingredients_list} 2"
    return @ingredients_list.uniq.sort
  end

  def choice
    puts @ingredients_list
    @recipes.choices(@ingredients_list)
  end
end