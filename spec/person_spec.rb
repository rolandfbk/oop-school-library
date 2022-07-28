require './person'
require './rental'
require './book'

describe Person do
  before :each do
    @person = Person.new 20, 'Roland'
    @person_unknown = Person.new 33
    @person_under_age = Person.new 12, 'Roland'
    @person_permission = Person.new 12, 'Roland', false
    @person_over_age = Person.new 30, 'Roland', false
    @book = Book.new 'Love Must Lead', 'Gabrielle'
    @date = '2022-07-27'
  end

  it 'should returns a Person object' do
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

  it 'The correct_name method corrects the name' do
    expect(@person.correct_name).to eq 'Roland'
  end

  it 'should return true if person age is less than 18 otherwise return true' do
    expect(@person.can_use_services?).to be true
    expect(@person_under_age.can_use_services?).to be true
  end

  it 'The can_use_services? method returns true if under age and no parent permission' do
    expect(@person_permission.can_use_services?).to be true
  end

  it 'The can_use_services? method returns false if over age and no parent permission' do
    expect(@person_over_age.can_use_services?).to be false
  end

  it 'The add_rental method returns a rental and adds its to the book' do
    @person.add_rental(@book, @date)
    expect(@person.rentals.length).to eq 1
  end
end
