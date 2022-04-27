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
    expect(ing.ingredients).to eq(["Cheese", "Chicken", "Ham", "Tomatoes", "Wine"])
  end

  it 'returns multiple inputted ingredient and removes duplicate' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham', 'ham', 'wine')
    expect(ing.ingredients).to eq(["Cheese", "Chicken", "Ham", "Tomatoes", "Wine"])
  end

  it 'assumes correct ingredient when spelt wrong (missing end letters)' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('bre')
    ing.ingredients
    expect(ing.dictionary).to eq(['Bread'])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (missing end letters)' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Chee', 'bre')
    ing.ingredients
    expect(ing.dictionary).to eq(["Bread", "Cheese"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (missing end letters) 2' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Bre', 'Chee', 'Ha', 'Pas', 'Tomato')
    ing.ingredients
    expect(ing.dictionary).to eq(["Bread", "Cheese", "Ham", "Pasta", "Tomatoes"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Berad')
    ing.ingredients
    expect(ing.dictionary).to eq(["Bread"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Berad', 'Cehese')
    ing.ingredients
    expect(ing.dictionary).to eq(["Bread", "Cheese"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('Berad', 'Cehese', 'Hma', 'Psaat', 'Tomeasto')
    ing.ingredients
    expect(ing.dictionary).to eq(["Bread", "Cheese", "Ham", "Pasta", "Tomatoes"])
  end
end