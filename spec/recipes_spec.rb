require './lib/recipes'

describe Recipes do
  it 'returns recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    expect(recipe.choices(["cheese", "pork"])).to eq('cheese toasty')
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["pork", "cheese"])).to eq('cheese toasty')
  end

  it 'returns error message when ingredients dont match any recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["beef", "pork"])).to eq('Have you got anything else?!')
  end

  it 'returns all available recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["ham", "cheese"])).to eq("cheese toasty, ham_sandwhich")
  end
end