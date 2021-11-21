require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should fail validation, when a paper was created without title, venue and year" do
    paper = Paper.new(venue: 'place', year:'2020')
    expect(paper).to_not be_valid
  end
end
