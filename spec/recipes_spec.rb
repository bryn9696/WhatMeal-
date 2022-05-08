require './lib/recipes'

describe Recipes do
  it 'returns recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    expect(recipe.choices(["Cheese", "Pork"])).to eq(['Cheese Toasty'])
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["Pork", "Cheese"])).to eq(['Cheese Toasty'])
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Egg"])).to eq(['Ham Sandwhich'])
  end

  it 'returns error message when ingredients dont match any recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Beef", "Pork"])).to eq('Have you got anything else?!')
  end

  it 'returns all available recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Cheese", "Pasta"])).to eq(["Cheese Toasty", "Ham Sandwhich", "Tomato Pasta"])
  end

  it 'returns all available recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["Egg", "Ham", "Cheese"])).to eq(["Cheese Toasty", "Ham Sandwhich"])
  end

  it 'returns multiple recipes when the same one ingredient is entered' do
    recipe = Recipes.new
    expect(recipe.choices(["Ham", "Cheese", "Bread"])).to eq(["Cheese Toasty", "Ham Sandwhich"])
  end

  it 'returns the new recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    expect(recipe.choices(["Chicken"])).to eq(['Jerk Chiken', 'Sweet Chilli Chiken'])
  end
end