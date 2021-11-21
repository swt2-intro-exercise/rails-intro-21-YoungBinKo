require 'rails_helper'

describe "New show page", type: :feature do
    it "should display author's full name" do
      paper = FactoryBot.create :paper
      visit paper_path(paper)       
      expect(paper).to have_text('author.name')
    end
  end
  