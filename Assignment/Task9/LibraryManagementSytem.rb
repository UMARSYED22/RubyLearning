# Comprehensive Task (10 points)
# Write a program that simulates a simple library system using the concepts you've learned:
# Use arrays and hashes to store books and their details.
# Implement methods to add, remove, and search for books.
# Use loops to display all books.
# Use blocks, procs, or lambdas to filter books by genre or author.
# Write RSpec tests for your library system.

require 'rspec'
class Library
  attr_accessor :book
  def initialize
    @book=[]
  end

  def addBook(title,author,genre)
    @book.push({title:title,author:author,genre:genre})
  end
  def removeBook(title)
    @book.delete_if{|x| x[:title]==title}
  end
  def search(title)
    @book.each do |x|
      if x[:title]==title
        return x
      end
    end
    return "No book found"
  end

  def display
    @book.each do |x|
      puts x
    end
  end
  def filterBooks(filterLambda)   #& operator is used to convert a Proc or a lambda into a block
    books=@book.select(&filterLambda) #The select method returns only those books that meet the condition.
  end
end

l=Library.new
l.addBook("Harry Potter","James","Fiction")
l.addBook("Carry Forward","albert","Fiction")
l.addBook('The Great Gatsby', 'F. Scott Fitzgerald', 'Real')
l.addBook('1984', 'George Orwell', 'Fiction')
l.addBook('To Kill a Mockingbird', 'Harper Lee', 'Fiction')
# l.removeBook("Harry Potter")

l.display
# book=l.search(" Forward")
# puts book
# # Filter by genre
# fiction_books = l.filterBooks(lambda { |book| book[:genre] == 'Fiction' })
# books= "Fiction Books: #{fiction_books.map { |book| book[:title] }}"
# puts books

# library_spec.rb

RSpec.describe Library do

  describe '#addBook' do
    it 'adds a book to the library' do
      l.addBook('Brave New World', 'Aldous Huxley', 'Real')
      expect(l.book).to include({ title: 'Brave New World', author: 'Aldous Huxley', genre: 'Real' })
    end
  end

  describe '#removeBook' do
    it 'removes a book from the library' do
      l.removeBook('Harry Potter')
      expect(l.book).not_to include({ title: 'Harry Potter', author: 'james', genre: 'Fiction' })
    end
  end

  describe '#search' do
    it 'finds a book by its title' do
      books = l.search('1984')
      expect(books).to eq({ title: '1984', author: 'George Orwell', genre: 'Fiction' })
    end
  end

  describe '#filterBooks' do
    it 'filters books by genre' do
      fictionBooks = l.filterBooks(lambda { |book| book[:genre] == 'Fiction' })
      expect(fictionBooks.size).to eq(3)
    end
  end
end