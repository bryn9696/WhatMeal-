
class Recipes
  attr_reader :ingredients_list

  def initialize
    @options = []
    @cheese_toasty = ['Cheese', 'Bread']
    @ham_sandwhich = ['Ham', 'Bread']
    @tomato_pasta = ['Pasta', 'Tomatoes']
  end

  def choices(ingredients_list)
    self.cheese_toasty(ingredients_list)
    self.ham_sandwhich(ingredients_list)
    self.tomato_pasta(ingredients_list)
    @options.length >= 1 ? @options.uniq.join(', ') : "Have you got anything else?!"
  end

  def cheese_toasty(ingredients_list)
    @cheese_toasty.each do |i|
      ingredients_list.include?(i) == true ? @options << "Cheese Toasty" : @options
    end
  end

  def ham_sandwhich(ingredients_list)
    @ham_sandwhich.each do |i|
      ingredients_list.include?(i) == true ? @options << "Ham Sandwhich" : @options
    end
  end

  def tomato_pasta(ingredients_list)
    @tomato_pasta.each do |i|
      ingredients_list.include?(i) == true ? @options << "Tomato Pasta" : @options
    end
  end
end