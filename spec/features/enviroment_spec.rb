feature "testing enviroment" do
  scenario "we can test the view page" do
    visit("/")
    expect(page).to have_content("Hello World!")
  end
end