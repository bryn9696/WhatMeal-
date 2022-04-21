class Ingredients
  def ingredients
    ing = []
    number = 1
    while number < 6 do
      input = gets.chomp
      ing << input
      number += 1
    end
    ing
  end
end