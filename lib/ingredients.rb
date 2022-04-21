class Ingredients
  def ingredients
    ingredients_list = []
    total = 1
    while total < 6 do
      input = gets.chomp
      ingredients_list << input
      total += 1
    end
    ingredients_list.uniq
  end
end