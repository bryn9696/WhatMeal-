
class Recipes
  attr_reader :ingredients_list

  def choices(ingredients_list)
    @options = []
    self.cheese_toasty(ingredients_list)
    self.ham_sandwhich(ingredients_list)

    if @options.length >= 1
      return @options.join(', ')
    else
      return "Have you got anything else?!"
    end
  end

  def cheese_toasty(ingredients_list)
    cheese_toasty = ['cheese', 'bread']
    cheese_toasty.each do |i|
      if ingredients_list.include?(i) == true
        @options << "cheese toasty"
      end
    end
  end

  def ham_sandwhich(ingredients_list)
    ham_sandwhich = ['ham', 'bread']
    ham_sandwhich.each do |i|
      if ingredients_list.include?(i) == true
        @options << "ham_sandwhich"
      end
    end
  end
end