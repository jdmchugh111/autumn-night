require 'rails_helper'

RSpec.describe 'Search Results', type: :feature do
  it "can search for members by nation and return all required info" do
    visit root_path

    select "Fire Nation", :from => :nation
    click_button "Search For Members"
    
    expect(current_path).to eq(search_path)

    expect(page).to have_content("Total Members in this Nation: 97")

    within "#member-5cf5679a915ecad153ab68ef" do
      expect(page).to have_content("Name: Bully guard")
      expect(page.find('.character-image')['src']).to have_content("https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626")
      expect(page).to have_content("Allies: Azula")
      expect(page).to have_content("Enemies: Sokka")
      expect(page).to have_content("Affiliation: Fire Nation")
    end
  end
end