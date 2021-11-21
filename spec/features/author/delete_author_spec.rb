require 'rails_helper'

describe "author delete page", type: :feature do
  it "should destroy author" do
    author = FactoryBot.create :author
    number = Author.count
    author.destroy
    expect(Author.count).to be(number-1)
  end
end
