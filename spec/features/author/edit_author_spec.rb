describe "Edit author page", type: :feature do
  it "should save changes to the author" do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
    fill_in 'author[homepage]', with: 'http://wikipedia.de/Alan_Turing_other_homepage'
    find('input[type="submit"]').click
    visit author_path(@alan)
    expect(page).to have_text("http://wikipedia.de/Alan_Turing_other_homepage")
  end
end