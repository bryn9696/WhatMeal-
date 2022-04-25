require './lib/ingredients'

describe Ingredients do
  it 'returns inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese')
    expect(ing.ingredients).to eq(['Cheese'])
  end

  it 'recognises uppercase and lowercase inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Cheese', 'HAM')
    expect(ing.ingredients).to eq(['Cheese', 'Ham'])
  end

  it 'returns multiple inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham')
    expect(ing.ingredients).to eq(['Cheese', 'Wine', 'Chicken', 'Tomatoes', 'Ham'])
  end

  it 'returns multiple inputted ingredient and removes duplicate' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham', 'ham', 'wine')
    expect(ing.ingredients).to eq(['Cheese', 'Wine', 'Chicken', 'Tomatoes', 'Ham'])
  end
end