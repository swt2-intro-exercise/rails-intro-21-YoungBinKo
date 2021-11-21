require 'rails_helper'

describe "Index page", :type => :feature do
  
  it "should display an HTML table with the headings 'Name' and 'Hompage'" do
    index_path = "/authors"
    visit index_path
    expect(page).to have_css 'table'
    within 'table' do
        expect(page).to have_text 'Name'
        expect(page).to have_text 'Homepage'
    end
  end
  it "should contain a link to add new authors" do
    index_path = "/authors"
    visit index_path
    expect(page).to have_link 'New', href: new_author_path
  end

end