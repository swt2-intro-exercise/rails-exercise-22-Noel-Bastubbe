require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have title, venue and year" do
    paper = Paper.new(title: "Best_Paper", venue: "Berlin", year: 2001)
    expect(paper.title).to eq("Best_Paper")
    expect(paper.venue).to eq("Berlin")
    expect(paper.year).to eq(2001)
  end
end
