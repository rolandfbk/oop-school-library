require './teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'Nursery', 60, 'Sir John', true
  end

  it 'should returns a teacher object' do
    expect(@teacher).to be_instance_of Teacher
  end

  it 'should show the person age' do
    expect(@teacher.age).to eq 60
  end

  it 'should show the teacher name' do
    expect(@teacher.name).to eq 'Sir John'
  end

  it 'should return true if person age is less than 18 otherwise return true' do
    expect(@teacher.can_use_services?).to be true
  end
end
