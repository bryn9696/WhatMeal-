require './lib/ingredients'

describe Ingredients do
  it 'returns inputted ingredient' do
    # ing = Recipes.new
    # p ing.ingredients
    # allow(ing).to receive(:gets).and_return('cheese')
    expect(Ingredients.ingredients(["Cheese"])).to eq(['Cheese'])
  end

  it 'recognises uppercase and lowercase inputted ingredient' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('Cheese', 'HAM')
    expect(Ingredients.ingredients(['Cheese', 'HAM'])).to eq(['Cheese', 'Ham'])
  end

  it 'returns multiple inputted ingredient' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham')
    expect(Ingredients.ingredients(['cheese', 'wine', 'chicken', 'tomatoes', 'ham'])).to eq(["Cheese", "Chicken", "Ham", "Tomatoes", "Wine"])
  end

  it 'returns multiple inputted ingredient and removes duplicate' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('cheese', 'wine', 'chicken', 'tomatoes', 'ham', 'ham', 'wine')
    expect(Ingredients.ingredients(['cheese', 'wine', 'chicken', 'tomatoes', 'ham', 'ham', 'wine'])).to eq(["Cheese", "Chicken", "Ham", "Tomatoes", "Wine"])
  end

  it 'assumes correct ingredient when spelt wrong (missing end letters)' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('bre')
    # ing.ingredients
    expect(Ingredients.dictionary(['bre'])).to eq(['Bread'])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (missing end letters)' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('Chee', 'bre')
    # ing.ingredients
    p Ingredients.dictionary(["Cheese"])
    expect(Ingredients.dictionary(['Chee', 'bre'])).to eq(["Bread", "Cheese"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (missing end letters) 2' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('Bre', 'Chee', 'Ha', 'Pas', 'Tomato')
    # ing.ingredients
    expect(Ingredients.dictionary(['Bre', 'Chee', 'Ha', 'Pas', 'Tomato'])).to eq(["Bread", "Cheese", "Ham", "Pasta", "Tomatoes"])
  end

  it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('Berad')
    # ing.ingredients
    expect(Ingredients.dictionary(['Berad'])).to eq(["Bread"])
  end

  # it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
  #   ing = Ingredients.new
  #   allow(ing).to receive(:gets).and_return('Berad', 'Cehese', 'zam')
  #   ing.ingredients
  #   expect(ing.dictionary).to eq(["Bread", "Cheese"])
  # end

  it 'assumes correct ingredient when multiple words spelt wrong (letters in wrong order)' do
    # ing = Ingredients.new
    # allow(ing).to receive(:gets).and_return('Berad', 'Cehese', 'Hma', 'Psaat', 'Tomeasto')
    # ing.ingredients
    expect(Ingredients.dictionary(['Berad', 'Cehese', 'Hma', 'Psaat', 'Tomeasto'])).to eq(["Bread", "Cheese", "Ham", "Pasta", "Tomatoes"])
  end

  # it 'assumes correct ingredient when only 4 ingredients entered but multiple words spelt wrong (missing end letters) 3' do
  #   # ing = Ingredients.new
  #   # allow(ing).to receive(:gets).and_return('bradz')
  #   # ing.ingredients
  #   expect(Ingredients.dictionary(['bradz'])).to eq(["Bread"])
  # end

  it 'returns the new recipe matching one ingredient (when given first)' do
    expect(Ingredients.choice(["Chicken"])).to eq('Jerk Chiken, Sweet Chilli Chiken')
  end
end