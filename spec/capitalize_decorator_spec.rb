require './capitalize_decorator'
require './person'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new 23, 'antetokounmpo'
    @capitalize = CapitalizeDecorator.new(@person)
  end

  it 'should CAPS person name' do
    expect(@capitalize.correct_name).to eq 'ANTETOKOUNMPO'
  end
end
