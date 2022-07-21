# rubocop:disable Metrics

require './app'

def run
  puts 'Welcome To School Library App!'
  puts
  puts
end

def message_menu(myapp)
  puts 'Please choose an option by entering a number'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'

  choice = gets.chomp

  case choice
  when '1'
    myapp.list_all_books
    message_menu myapp
  when '2'
    myapp.list_all_people
    message_menu myapp
  when '3'
    myapp.create_a_person
    message_menu myapp
  when '4'
    myapp.create_a_book
    message_menu myapp
  when '5'
    myapp.create_a_rental
    message_menu myapp
  when '6'
    myapp.list_rentals_by_person_id
    message_menu myapp
  when '7'
    puts 'Thank you for using the School Library App!'
  else
    puts 'Please enter a number between 1 and 7'
  end
end

def main
  app = App.new
  run
  message_menu app
end

main

# rubocop:enable Metrics
