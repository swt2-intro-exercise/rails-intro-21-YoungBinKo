require 'rails_helper'

describe "author edit page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    # new_author_path = "/authors/new"
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')

    visit edit_author_path(author)
    page.fill_in 'author[last_name]', with: 'Turing'
    page.fill_in 'author[first_name]', with: 'Alann'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').clickc
    Author.exists?(:first_name => 'Alann', :last_name => 'Turing')
    
  end
end
