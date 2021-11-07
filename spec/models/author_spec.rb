require 'rails_helper'

RSpec.describe Author, type: :model do
  # author = Author.new
  # expect(author.name).to be_nil
  # author.name = "Alan Turing"
  # author.homepage = 'http://wikipedia.org/Alan_Turing'
  it "should have first name, last name and homepage" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end
  it "should return full name from first and last name" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.name).to eq('Alan Turing')
  end
end
