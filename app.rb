class App
  def display_all_book
    alex.animals.map {|book| print ${book.name}}
  end
end