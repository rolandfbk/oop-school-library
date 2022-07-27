require '../person'

describe Person do

  before :each do
    @person = Person.new 20, 'Roland'
    @person_unknown = Person.new 33
    @person_permission = Person.new 12, 'Nii', false
  end

  it "should returns a Book object" do
    expect(@person).to be_instance_of Person
    expect(@person_unknown).to be_instance_of Person
    expect(@person_permission).to be_instance_of Person
  end

  it 'should show the person age' do
    expect(@person.age).to eq 20
    expect(@person_unknown.age).to eq 33
    expect(@person_permission.age).to eq 12
  end

  it 'should show the person name' do
    expect(@person.name).to eq 'Roland'
    expect(@person_permission.name).to eq 'Nii'
  end

  it 'should show the person name as Unknown' do
    expect(@person_unknown.name).to eq 'Unknown'
  end

  it 'should show the person parent permission as false' do
    p @person_permission.parent_permission
    expect(@person_permission.parent_permission).to be false
  end

  it 'should return the person name' do
    @person.correct_name
    expect(@person.name).to eq 'Roland'
  end

  it 'should return true if person age is less than 18 otherwise return true' do
    expect(@person.can_use_services?).to be false
    expect(@person_permission.can_use_services?).to be true
  end

end
