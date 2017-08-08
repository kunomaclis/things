require 'rails_helper'

feature "user session" do
  scenario "the user can register for the site" do
    # Create a most recent game that should definitely appear in the list
    visit "/"

    click_link("Sign up")

    expect(page).to have_current_path new_user_registration_path

    fill_in("Email", with: "rachelfaker@test.com")
    fill_in("Password", with: "tested")
    fill_in("Password confirmation", with: "tested")

    click_button("Sign up")

    expect(page).to have_current_path '/'
  end

  scenario "the user is unable to register for the site with a password less than 6 letters" do
    # Create a most recent game that should definitely appear in the list
    visit "/"

    click_link("Sign up")

    expect(page).to have_current_path new_user_registration_path

    fill_in("Email", with: "rachelfaker@test.com")
    fill_in("Password", with: "test")
    fill_in("Password confirmation", with: "test")

    click_button("Sign up")

    expect(page).to have_current_path '/users'
  end

  scenario "the user can log into the site" do
    # Create a most recent game that should definitely appear in the list
    user = User.create!(email: "rachey@test.com", password: "tested")

    visit "/"

    click_link("Sign in")

    expect(page).to have_current_path new_user_session_path

    fill_in("Email", with: user.email)
    fill_in("Password", with: "tested")

    click_button("Log in")

    expect(page).to have_current_path '/'
  end

end










