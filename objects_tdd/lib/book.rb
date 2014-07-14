# book
class Book
  def initialize
    @current_page = 0
  end

  def turn_to_page(page)
    @current_page = page
  end

  def turn_page
    @current_page += 1
  end

  def current_page
    @current_page
  end
end
