class Ingredients
  def ingredients
    ingredients_list = []
    number = 1
    while number < 6 do
      input = gets.chomp
      ingredients_list << input
      number += 1
    end
    ingredients_list.uniq
  end
end