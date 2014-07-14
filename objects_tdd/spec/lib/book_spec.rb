require 'rspec'
require './lib/book'
describe Book do

  it 'should keep track of pages' do
    expect(subject.current_page).to eq(0)
    subject.turn_to_page(50)
    expect(subject.current_page).to eq(50)
    subject.turn_page
    expect(subject.current_page).to eq(51)
  end
end
