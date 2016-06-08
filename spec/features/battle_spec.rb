require 'spec_helper'

feature "fill in players names" do
	scenario "players enter their names" do
		visit '/'
		fill_in :player_1_name, with:  'name1'
		fill_in :player_2_name, with:  'name2'

		click_button 'Submit'

		expect(page).to have_content "name1 vs name2"
	end
end

feature "viewing players hit points" do
  scenario "view player 2 hit points" do
    visit '/'
    fill_in :player_1_name, with:  'name1'
    fill_in :player_2_name, with:  'name2'
    click_button 'Submit'
    expect(page).to have_content 'name2 has 50 points, name1 has 50 points'
  end
end