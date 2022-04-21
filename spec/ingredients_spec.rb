require './lib/ingredients'

describe Ingredients do
  it 'returns inputted ingredient' do
    ing = Ingredients.new
    allow(ing).to receive(:gets).and_return('cheese')
    expect(ing.ingredients).to eq(['cheese'])
  end

end