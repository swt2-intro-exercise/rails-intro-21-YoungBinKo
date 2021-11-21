require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should fail validation, when a paper was created without title, venue and year" do
    paper = Paper.new(venue: 'place', year:'2020')
    expect(paper).to_not be_valid
  end
  it "should have many authors" do
    subject {Paper.new}
    paper = Paper.reflect_on_association(:authors)
    expect(paper.macro).to eq :has_and_belongs_to_many
  end
end
