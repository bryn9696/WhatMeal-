
class Recipes
  attr_reader :ingredients_list

  def choices(ingredients_list)
    p ingredients_list
    if ingredients_list[0] == "cheese"
      p 'cheese toasty'
    end
  end
end