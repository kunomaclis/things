require 'rails_helper'

feature "user favoritings" do

  scenario "the user can favorite a song" do

    user = User.create!(email: "rachey@test.com", password: "tested")
    most_recent_song = Song.create!(name: "Butter", artist: "A Tribe Called Quest")
    visit "/"

    click_link("Sign in")

    expect(page).to have_current_path new_user_session_path

    fill_in("Email", with: user.email)
    fill_in("Password", with: "tested")

    click_button("Log in")

    expect(page).to have_current_path '/'

    within(".recent-songs") do
        click_link("favorite")
    end
    expect(page).to have_current_path '/'
  end
end
