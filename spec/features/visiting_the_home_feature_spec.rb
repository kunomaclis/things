require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user sees a list of recent songs and can view them" do
    # Create a most recent game that should definitely appear in the list
    most_recent_song = Song.create!(name: "Butter", artist: "A Tribe Called Quest")

    visit "/"

    within(".recent-songs") do
      expect(page).to have_content most_recent_song.name
    end
  end
end
