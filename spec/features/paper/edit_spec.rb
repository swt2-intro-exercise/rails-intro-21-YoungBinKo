require 'rails_helper'

describe "paper edit page", type: :feature do
  it "should have a single multiple select box" do
    paper = FactoryBot.create :paper
    visit edit_paper_url(paper)
    expect(page.find(:select)[:multiple]).to be_truthy 
  end
end
