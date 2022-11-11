describe "Delete author", type: :feature do
  it "should decrease the author count" do
    @alan = FactoryBot.create(:author)
    @oldAuthorCount = Author.count
    visit "/authors"
    click_on('Delete')
    expect(@oldAuthorCount).to eq(Author.count - 1)
  end
end