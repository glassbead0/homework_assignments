#!/usr/bin/env ruby

# I created a class called Book. When you create a new book,
# you can tell it how many pages it has (or its set to 50 by default)
# you can ask the book how many pages it has, what your current page is,
# you can turn the page, you can read a range of pages and it will keep
# track of which pages you have read.

# the book class
class Book
  def initialize(number_of_pages = 50)
    @number_of_pages = number_of_pages
    @pages_already_read = []
    @current_page = 0
  end

  attr_reader :number_of_pages

  attr_reader :current_page # this was recommended by rubocop for trivial methods

  attr_reader :pages_already_read

  def read_pages(page_range)
    @pages_already_read += page_range.to_a
    @pages_already_read.sort!.uniq
  end

  def turn_page(number_of_pages = 1)
    @current_page += number_of_pages
  end

  def turn_to_page(page)
    @current_page = page
  end
end

# harry_potter = Book.new(154)
# puts harry_potter.current_page
# puts harry_potter.how_many_pages
# harry_potter.turn_page
# puts harry_potter.current_page
# harry_potter.read_pages(1..500)
# puts harry_potter.pages_already_read
