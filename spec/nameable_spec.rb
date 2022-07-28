require './person'

describe Nameable do
  before :each do
    @person = Person.new 23, 'antetokounmpo'
  end

  it 'Should display correct name' do
    expect(@person.correct_name).to eq 'antetokounmpo'
  end
end
