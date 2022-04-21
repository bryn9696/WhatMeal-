require './lib/recipes'

describe Recipes do
  it 'returns recipe matching one ingredient' do
    recipe = Recipes.new
    expect(recipe.choices).to eq('cheese toasty')
  end
end