# Hashes and Hash Methods (10 points)
# Create a hash to store information about a book (title, author, pages, genre).
# Write a method to display all the information in a formatted string.
# Add a feature to update the number of pages and genre.

book={
  title:"harry potter",
  author:"james",
  pages:400,
  genre:"fiction"
}

def display(book)
  "Title= #{book[:title]}, Author= #{book[:author]}, Pages= #{book[:pages]}, Genre= #{book[:genre]}"
end

p display(book)

def update(book,new_pages,new_genre)
  book[:pages]=new_pages
  book[:genre]=new_genre
end

update(book,500,"real story")
p book

