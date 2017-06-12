require 'rails_helper'

RSpec.feature 'A registered user can' do
  include UserLogin

  context 'when logged in' do

    it 'view all harvests' do
      visit login_path
      sign_in('user')
      harvest1, harvest2, harvest3 = create_list(:harvest, 3)

      visit harvests_path

      expect(page).to have_content("Viewing All Harvests")
      expect(page).to have_content(harvest1.start_date)
      expect(page).to have_content(harvest2.start_date)
      expect(page).to have_content(harvest3.start_date)
    end

    it 'view single harvest' do
      visit login_path
      sign_in('user')
      harvest1, harvest2, harvest3 = create_list(:harvest, 3)
      visit harvests_path

      click_on harvest1.name
      expect(current_path).to eq(harvest_path(harvest1))
      expect(page).to have_content("Viewing: #{harvest1.name}")
      expect(page).to have_content(harvest1.start_date)
      expect(page).to have_content(harvest1.end_date)
      expect(page).to have_content(harvest1.completed)
      expect(page).to_not have_content(harvest2.start_date)
      expect(page).to_not have_content(harvest3.start_date)
    end

  end
end
