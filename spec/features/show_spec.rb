require 'rails_helper'

describe "New show page", type: :feature do
    it "should display author's details, which are author's first name, last name, and homepage" do
      FactoryBot.create :author
      visit new_author_path 
      page.fill_in 'author[last_name]', with: 'author.first_name'
      page.fill_in 'author[first_name]', with: 'author.last_name'
      page.fill_in 'author[homepage]', with: 'author.homepage'
      find('input[type="submit"]').click
      
      # these are the standard names given to inputs by the Rails form builder
      expect(page).to have_text('author.first_name')
      expect(page).to have_text('author.last_name')
      expect(page).to have_text('author.homepage')
    end
  
  end
  