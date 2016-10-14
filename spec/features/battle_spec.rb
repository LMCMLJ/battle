require 'app'
require 'spec_helper'

feature 'Battle' do

  before :each do
    sign_in_and_play
  end

  scenario "expect names to be submitted and displayed" do
    expect(page).to have_text "Mike"
    expect(page).to have_text "Julio"
  end

  scenario "expect players hit points to be displayed" do
    expect(page).to have_text "100"
  end

  scenario "expect score to reduce following attack" do
    click_button("Attack!")
    expect(page).to have_text "90"
  end

  scenario "expect the you lose page to be displayed at 0 hp" do
    kill_player
    # expect(page).to have_image ("http://tinyurl.com/jv3o4kg")
    expect(page).to have_text('You are dead!!')
  end

end
