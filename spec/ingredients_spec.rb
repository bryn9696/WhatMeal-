require './lib/ingredients'

describe Ingredients do
  it 'returns inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese')
    expect(ing.ingredients).to eq(['cheese'])
  end

  it 'returns multiple inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham')
    expect(ing.ingredients).to eq(['cheese', 'wine', 'chicken', 'tomatoes', 'ham'])
  end

  it 'returns multiple inputted ingredient and removes duplicate' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham', 'ham', 'wine')
    expect(ing.ingredients).to eq(['cheese', 'wine', 'chicken', 'tomatoes', 'ham'])
  end
end