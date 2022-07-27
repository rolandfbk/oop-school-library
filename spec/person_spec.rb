require './person'

describe Person do

  before :each do
    @person = Person.new 20, 'Roland'
    @person_unknown = Person.new 33
  end

  it "should returns a Person object" do
    expect(@person).to be_instance_of Person
    expect(@person_unknown).to be_instance_of Person
  end

  it 'should show the person age' do
    expect(@person.age).to eq 20
    expect(@person_unknown.age).to eq 33
  end

  it 'should show the person name' do
    expect(@person.name).to eq 'Roland'
  end

  it 'should show the person name as Unknown' do
    expect(@person_unknown.name).to eq 'Unknown'
  end

  it 'should return the person name' do
    @person.correct_name
    expect(@person.name).to eq 'Roland'
  end

  it 'should return true if person age is less than 18 otherwise return true' do
    expect(@person.can_use_services?).to be false
  end

end
