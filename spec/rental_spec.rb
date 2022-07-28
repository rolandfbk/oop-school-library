require './rental'
require './student'
require './teacher'
require './book'

describe Rental do
  before :each do
    @person = Student.new nil, 20, 'Roland', parent_permission: true
    @book = Book.new 'Love Must Lead', 'Gabrielle'
    @rental = Rental.new '2022-07-27', @person, @book
  end

  it 'should show rented books title' do
    @person.rentals.each do |rental|
      expect(rental.book.title).to eq 'Love Must Lead'
    end
  end
  it 'should show name of person to rent' do
    @person.rentals.each do |rental|
      expect(rental.person.name).to eq 'Roland'
    end
  end
  it 'should show date of rental' do
    @person.rentals.each do |rental|
      expect(rental.date).to eq '2022-07-27'
    end
  end
end
