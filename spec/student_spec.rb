require './student'

describe Student do
  before :each do
    @student = Student.new 'Grade 12', 20, 'Roland'
    @student_unknown = Student.new 'Grade 6', 12
  end

  it 'should returns a Student object' do
    expect(@student).to be_instance_of Student
  end

  it 'should show the student age' do
    expect(@student.age).to eq 20
  end

  it 'should show the student name' do
    expect(@student.name).to eq 'Roland'
  end

  it 'should show the student classroom' do
    expect(@student.classroom).to eq 'Grade 12'
  end

  it 'should show the student name as Unknown' do
    expect(@student_unknown.name).to eq 'Unknown'
  end

  it 'should return the student name' do
    # @student.correct_name
    expect(@student.correct_name).to eq 'Roland'
  end

  it 'should return true if student age is less than 18 otherwise return true' do
    expect(@student.can_use_services?).to be true
  end
end
