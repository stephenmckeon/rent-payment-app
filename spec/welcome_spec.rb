require "rails_helper"

describe "Weclome Page", type: :feature do
  it "successfully displays welcome page when no gamer is logged in" do
    visit "/"
    expect(current_path).to eq("/")
    expect(page).to have_content "Welcome Gamers!"
    expect(page).to have_link "Login", href: "/signin"
    expect(page).to have_link "Sign Up", href: "/gamers/new"
  end

  it "successfully displays welcome page when a gamer is logged in" do
    create(:gamer)
    visit "/signin"
    fill_in :gamertag, with: "ScubaStephe"
    fill_in :password, with: "TestPassword123!"
    click_button "Sign In"
    expect(page).to have_content "Welcome Steve"
    expect(page).to have_link "Profile", href: "/gamers/1"
    expect(page).to have_link "New gaming session", href: "/gaming_sessions/new"
    expect(page).to have_link "All gaming sessions", href: "/gaming_sessions"
    expect(page).to have_link "All Gamers", href: "/gamers"
    expect(page).to have_link "All Platforms", href: "/platforms"
    expect(page).to have_content "Newest Games to Check Out"
    expect(page).to have_button "Sign Out"
  end
end