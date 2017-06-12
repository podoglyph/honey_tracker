require 'rails_helper'

RSpec.feature 'A registered user can' do
  include UserLogin

  context 'when logged in' do

    it 'view all seasons' do
      visit login_path
      sign_in('user')
      season1, season2, season3 = create_list(:season, 3)
      visit seasons_path

      expect(page).to have_content("Viewing All Seasons")
      expect(page).to have_content(season1.name + " " + season1.year)
      expect(page).to have_content(season2.name + " " + season2.year)
      expect(page).to have_content(season3.name + " " + season3.year)
    end

    it 'view single season' do
      visit login_path
      sign_in('user')
      season1, season2, season3 = create_list(:season, 3)
      visit seasons_path

      click_on "#{season1.name} #{season1.year}"
      expect(current_path).to eq(season_path(season1))
      within(:css, 'th.table-stats') do
        expect(page).to have_content(season1.name)
        expect(page).to_not have_content(season2.name)
        expect(page).to_not have_content(season3.name)
      end
    end

  end
end
