require 'rails_helper'

RSpec.feature 'A registered user can' do
  include UserLogin

  context 'when logged in' do

    it 'view all seasons' do
      visit login_path
      sign_in('user')
      season1 = Season.create(name: 'Summer', year: '2015')
      season2 = Season.create(name: 'Winter', year: '2016')
      season3 = Season.create(name: 'Summer', year: '2016')
      visit seasons_path

      expect(page).to have_content("Seasons")
      expect(page).to have_content(season1.name + " " + season1.year)
      expect(page).to have_content(season2.name + " " + season2.year)
      expect(page).to have_content(season3.name + " " + season3.year)
    end

    it 'view single season' do
      visit login_path
      sign_in('user')
      season1 = Season.create(name: 'Summer', year: '2015')
      season2 = Season.create(name: 'Winter', year: '2016')
      season3 = Season.create(name: 'Summer', year: '2016')
      visit seasons_path

      click_on "#{season1.name} #{season1.year}"
      expect(current_path).to eq(season_path(season1))
      save_and_open_page
      within(:css, 'h1.table-stats') do
        expect(page).to have_content("#{season1.name} #{season1.year}")
        expect(page).to_not have_content("#{season2.name} #{season2.year}")
        expect(page).to_not have_content("#{season3.name} #{season3.year}")
      end
    end

  end
end
