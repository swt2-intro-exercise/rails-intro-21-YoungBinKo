require 'rails_helper'

describe "New show page", type: :feature do
    it "should exist at 'show_path' and render withour error" do
      visit show_path
    end
    it "should have text inputs for an author's first name, last name, and homepage" do
      visit show_path
      FactoryBot.create :author
      # these are the standard names given to inputs by the Rails form builder
      expect(page).to have_text('author.first_name')
      expect(page).to have_text('author.last_name')
      expect(page).to have_text('author.homepage')
    end
  
  end
  