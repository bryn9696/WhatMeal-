require './lib/recipes'

describe Recipes do
  it 'returns recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    expect(recipe.choices(["Cheese", "Pork"])).to eq(["Cheese Toasty:Cheese, Bread, Butter", "Macaroni Cheese:Pasta, Cheese"])
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["Pork", "Cheese"])).to eq(["Cheese Toasty:Cheese, Bread, Butter", "Macaroni Cheese:Pasta, Cheese"])
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Egg"])).to eq(["Ham Sandwhich:Ham, Bread, Butter"])
  end

  it 'returns error message when ingredients dont match any recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Beef", "Pork"])).to eq('Have you got anything else?!')
  end

  it 'returns all available recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Cheese", "Pasta"])).to eq(["Cheese Toasty:Cheese, Bread, Butter", "Ham Sandwhich:Ham, Bread, Butter", "Tomato Pasta:Pasta, Tomatoes, Peppers, Chorizo", "Macaroni Cheese:Pasta, Cheese"])
  end

  it 'returns all available recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Egg", "Ham", "Cheese"])).to eq(["Cheese Toasty:Cheese, Bread, Butter", "Ham Sandwhich:Ham, Bread, Butter", "Macaroni Cheese:Pasta, Cheese"])
  end

  it 'returns multiple recipes when the same one ingredient is entered' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Cheese", "Bread"])).to eq(["Cheese Toasty:Cheese, Bread, Butter", "Ham Sandwhich:Ham, Bread, Butter", "Macaroni Cheese:Pasta, Cheese"])
  end

  it 'returns the new recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    p recipe.choices(["pasta"])
    expect(recipe.choices(["Chicken"])).to eq(["Jerk Chiken:Chicken, Jerk, Rice, Tomatoes, Bisto", "Sweet Chilli Chiken:Chicken, Rice, Sweet chilli sauce, Pineapple juice, Soy sauce"])
  end
end