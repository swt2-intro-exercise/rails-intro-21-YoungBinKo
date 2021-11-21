require 'rails_helper'

describe "author edit page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    author = FactoryBot.create :author
    visit edit_author_url(author)
    page.fill_in 'author[last_name]', with: 'Updated'
    find('input[type="submit"]').click
    author.reload
    Author.exists?(:first_name => 'Alan', :last_name => 'Updated')
  end
end
