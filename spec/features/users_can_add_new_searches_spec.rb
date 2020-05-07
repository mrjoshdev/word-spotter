require "rails_helper"

feature "user can add new searches", %Q{
  As a signed up user
  I want to create a new search
  So that I can view words that are contained in my search
  } do
  scenario "user adds new search successfully" do
    user = FactoryBot.create(:user)

    visit new_search_path
    expect(page).to have_content "*please enter lowercase letters"


    fill_in "search_name", with: "abcd"

    click_button "Submit"

    visit "searches#index"
    expect(page).to have_content "WordFinder"
  end

  scenario "user does not provide expected information for a search" do
    user = FactoryBot.create(:user)

    visit new_search_path
    expect(page).to have_content "*please enter lowercase letters"

    click_button "Submit"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Name is invalid"
  end
end
