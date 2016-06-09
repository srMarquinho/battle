require_relative '../spec_helper'

feature "attack" do
  scenario 'allows players to attack one another' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Van attacked Soph!"
  end
end
