require './book'

describe Book do
  before :each do
    @book = Book.new 'Love Must Lead', 'Gabrielle'
  end
  it 'should show the book title' do
    expect(@book.title).to eq 'Love Must Lead'
  end
  it 'should show the book author' do
    expect(@book.author).to eq 'Gabrielle'
  end
end
