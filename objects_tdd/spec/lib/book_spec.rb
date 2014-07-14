require 'rspec'
require './lib/book'

describe Book do

  describe 'current_page' do
    subject { Book.new('The Grapes of Math') }
    it 'should keep track of pages' do
      expect(subject.current_page).to eq(0)
      subject.turn_to_page(50)
      expect(subject.current_page).to eq(50)
      subject.turn_page
      expect(subject.current_page).to eq(51)
    end
  end

  # keeps an array of pages already read. a page gets read when a single page is turned
  describe 'pages_already_read' do
    subject { Book.new('Euclid in the Rainforest') }
    it 'should tell you what pages you\'ve read' do
      expect(subject.pages_already_read).to eq([])
      subject.turn_page
      expect(subject.pages_already_read).to eq([0])
      5.times do
        subject.turn_page
      end
      expect(subject.pages_already_read).to eq([0, 1, 2, 3, 4, 5])
      subject.turn_to_page(50)
      10.times do
        subject.turn_page
      end
      expect(subject.pages_already_read).to eq([0, 1, 2, 3, 4, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59])
      subject.turn_to_page(40)
      15.times do
        subject.turn_page
      end
      expect(subject.pages_already_read).to eq([0, 1, 2, 3, 4, 5, 40, 41, 42, 43, 44, 45, 46, 47,
                                                48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59])
    end
  end

  context 'errors with page numbers' do
    subject { Book.new('Harry Potter') }
    describe 'turn_to_page that is out of range' do
      it 'should stay on current page' do
        expect(subject.turn_to_page(150)).to eq(0)
        expect(subject.turn_to_page(-5)).to eq(0)
      end
    end

    describe 'turn_page at end of book' do
      it 'should stay on last page' do
        subject.turn_to_page(100)
        subject.turn_page
        expect(subject.current_page).to eq(100)
      end
    end

    describe 'turn to a floating point page' do
      it 'should round down' do
        expect(subject.turn_to_page(5.3)).to eq(5)
      end
    end
  end

  describe 'finished book' do
    subject { Book.new('Life Of Pi', 174) }
    it 'should tell you when you finish reading the book' do
      expect(subject.book_read?).to eq(false)
      174.times do
        subject.turn_page
      end
      expect(subject.book_read?).to eq(false)
      subject.turn_page
      expect(subject.book_read?).to eq(true)
    end
  end
end
