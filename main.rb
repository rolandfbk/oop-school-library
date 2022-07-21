require './person'
require './capitalize_decorator'
require './trimmer_decorator'
require './student'
require './classroom'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    # @class = Classroom.new('Grade 5')
  end

  def run
    puts 'Welcome To School Library App!'
    puts
    puts
    message_menu
  end

  def message_menu
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'

    choice = gets.chomp
    get_choice choice
  end

  def get_choice(input)
    case input
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_rentals_by_person_id
    when '7'
      puts 'Thank you for using the School Library App!'
    else
      puts 'Please enter a number between 1 and 7'
    end
  end

  def list_all_books
    puts 'There are no books to show! Please add a book.' unless !@books.empty?

    @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    puts
    puts
    message_menu
  end

  def list_all_people
    puts 'There are no people to show! Please add a student or a teacher.' unless !@people.empty?

    @people.each { |person| puts "[#{person.class}] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}" }
    puts
    puts
    message_menu
  end

  def create_a_person
    print 'Do you want to create a student (1) or teacher (2)? [Input the number]: '
    choice = gets.chomp

    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid input! Please enter 1 or 2'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp.downcase

    if permission == 'y'
      parent_permission =  true
    else
      parent_permission =  false
    end

    student = Student.new("Grade 12", age, name, parent_permission)
    @people << student

    puts 'Person/Student created successfully'
    puts
    puts
    message_menu
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name)
    @people << teacher

    puts 'Person/Teacher created successfully'
    puts
    puts
    message_menu
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book

    puts 'Book created successfully'
    puts
    puts
    message_menu
  end

  def create_a_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
  
    book_id = gets.chomp.to_i
  
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index { |person, index| puts "#{index}) [#{person.class}] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}" }
  
    person_id = gets.chomp.to_i
  
    print 'Date: '
    date = gets.chomp.to_s
  
    rental = Rental.new(date, @people[person_id], @books[book_id])
    @rentals << rental
  
    puts 'Rental created successfully'
    puts
    puts
    message_menu
  end

  def list_rentals_by_person_id
    print 'ID of person: '
    id = gets.chomp.to_i
  
    puts 'Rentals:'
    @rentals.each { |rental| puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id }
    
    puts
    puts
    message_menu
  end
end

def main
  app = App.new()
  app.run()
end

main()
