require 'rails_helper'

describe "author delete page", type: :feature do
  it "should destroy author" do
    author = FactoryBot.create :author
    number = Author.count
    visit delete_author_url(author)
    author.reload
    expect(Author.count).to be(number-1)
  end
end
