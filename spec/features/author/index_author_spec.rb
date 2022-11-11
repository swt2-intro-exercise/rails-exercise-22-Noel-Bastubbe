describe "Index author page", type: :feature do
  it "should display the name and homepage of the author" do
    @alan = FactoryBot.create(:author)
    visit "/authors"
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end

  it "should contain a link to add new authors" do
    visit "/authors"
    expect(page).to have_link 'New', href: new_author_path
  end
end