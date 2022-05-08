require_relative 'ingredients.rb'
class Recipes
  attr_accessor :ingredients_list, :ingredients

  def initialize
    @options = []
    @cheese_toasty = ['Cheese', 'Bread', 'Butter']
    @ham_sandwhich = ['Ham', 'Bread', 'Butter']
    @tomato_pasta = ['Pasta', 'Tomatoes', 'Peppers', 'Chorizo']
    @jerk_chicken = ['Chicken', 'Jerk', 'Rice', 'Tomatoes', 'Bisto']
    @sweet_chilli_chicken = ['Chicken', 'Rice', 'SweetChilliSauce', 'PineappleJuice', 'SoySauce']
  end

  def ingredient
    @ingredient = [@cheese_toasty, @ham_sandwhich, @tomato_pasta, @jerk_chicken, @sweet_chilli_chicken].reduce([], :concat)
  end

  def choices(ingredients_list)
    self.cheese_toasty(ingredients_list)
    self.ham_sandwhich(ingredients_list)
    self.tomato_pasta(ingredients_list)
    self.jerk_chicken(ingredients_list)
    self.sweet_chilli_chicken(ingredients_list)
    @options.length >= 1 ? @options.uniq : "Have you got anything else?!"
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

  def jerk_chicken(ingredients_list)
    @jerk_chicken.each do |i|
      ingredients_list.include?(i) == true ? @options << "Jerk Chiken" : @options
    end
  end

  def sweet_chilli_chicken(ingredients_list)
    @sweet_chilli_chicken.each do |i|
      ingredients_list.include?(i) == true ? @options << "Sweet Chilli Chiken" : @options
    end
  end
end