require 'rails_helper'

RSpec.feature 'A registered user can' do
  include UserLogin

  context 'when logged in' do

    it 'view all locations' do
      visit login_path
      user = sign_in('user')
      loc1, loc2, loc3 = create_list(:location, 3)
      visit locations_path

      expect(page).to have_content("Viewing All Locations")
      expect(page).to have_content(loc1.name)
      expect(page).to have_content(loc2.name)
      expect(page).to have_content(loc3.name)
    end

    it 'view single locations' do
      visit login_path
      user = sign_in('user')
      loc1, loc2, loc3 = create_list(:location, 3)
      visit locations_path

      click_on loc1.name
      expect(current_path).to eq(location_path(loc1))
      expect(page).to have_content("Viewing: #{loc1.name}")
      save_and_open_page
      expect(page).to_not have_content(loc2.name)
      expect(page).to_not have_content(loc3.name)
    end

  end
end
