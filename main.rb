require './person'
require './capitalize_decorator'
require './trimmer_decorator'
require './student'
require './classroom'

# person = Person.new(22, 'maximilianus')
# p person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# p capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# p capitalized_trimmed_person.correct_name

mystudent = Student.new('Grade 12', 20, 'Roland')
p mystudent
# myclass = Classroom.new('Class A')

# myclass.add_student(mystudent)
# myclass
# mystudent.classroom = myclass
p mystudent.classroom
# p mystudent.classroom
