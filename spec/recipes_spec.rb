require './lib/recipes'

describe Recipes do
  it 'returns recipe matching one ingredient (when given first)' do
    recipe = Recipes.new
    expect(recipe.choices(["cheese", "ham"])).to eq('cheese toasty')
  end

  it 'returns recipe matching one ingredient (when given second)' do
    recipe = Recipes.new
    expect(recipe.choices(["ham", "cheese"])).to eq('cheese toasty')
  end

  it 'returns error message when ingredients dont match any recipes' do
    recipe = Recipes.new
    expect(recipe.choices(["beef", "ham"])).to eq('Have you got anything else?!')
  end
end