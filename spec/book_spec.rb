require './book'

describe Book do

  before :each do
    @book = Book.new 'Love Must Lead', 'Gabrielle'
  end

  it "takes two parameters and returns a Book object" do
    expect(@book).to be_instance_of Book
  end

  it 'should show the book title' do
    expect(@book.title).to eq 'Love Must Lead'
  end

  it 'should show the book author' do
    expect(@book.author).to eq 'Gabrielle'
  end

end
