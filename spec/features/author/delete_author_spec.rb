describe "Delete Author Action",type: :feature do
  it "should decrease the Author count" do
    @alan = FactoryBot.create(:author)
    visit authors_path
    @count = Author.count
    find_link('Delete', href: author_path(@alan)).click
    expect(Author.count).to eq(@count - 1)
  end
end