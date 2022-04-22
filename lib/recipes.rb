
class Recipes
  attr_reader :ingredients_list

  def choices(ingredients_list)
    cheese_toasty = ['cheese', 'bread']
    ham_sandwhich = ['ham', 'bread']
    options = []
    cheese_toasty.each do |i|
      if ingredients_list.include?(i) == true
        options << "cheese toasty"
      end
    end

    ham_sandwhich.each do |i|
      if ingredients_list.include?(i) == true
        options << "ham_sandwhich"
      end
    end

    if options.length >= 1
      return options.join(', ')
    else
      return "Have you got anything else?!"
    end
  end
end