
class Recipes
  attr_reader :ingredients_list

  def choices(ingredients_list)
    p ingredients_list
    if ingredients_list.include?("cheese") == true
      return 'cheese toasty'
    else
      return 'Have you got anything else?!'
    end
  end
end