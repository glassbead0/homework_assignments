# book
class Book
  def initialize(book_name, number_of_pages = 100)
    @current_page = 0
    @number_of_pages = number_of_pages
    @pages_already_read = []
    @book_completed = false
    @book_name = book_name
  end

  def turn_to_page(page) # you can turn to any given page. does not mark pages as read
    if page <= @number_of_pages && page >= 0
      @current_page = page.floor
    else
      puts "This book doesn't have that many pages"
      @current_page
    end
  end

  def book_read?
    if @pages_already_read == (0..@number_of_pages).to_a
      puts "Congradulations! You finished #{@book_name}!"
      @book_completed = true
    else
      @book_completed = false
    end
  end

  def turn_page # will turn the page and mark the previous one as read.
    if @current_page < @number_of_pages
      @pages_already_read += [@current_page]
      @pages_already_read.sort!.uniq
      book_read?
      @current_page += 1
    else
      puts "You're at the end of the book."
      @pages_already_read += [@current_page]
      @pages_already_read.sort!.uniq
      book_read?
      @current_page
    end
  end

  def current_page
    @current_page
  end

  def pages_already_read
    @pages_already_read.sort!.uniq
  end
end
