require 'rails_helper'

RSpec.feature 'A registered user can' do
  include UserLogin

  context 'when logged in' do

    it 'view all jobs' do
      visit login_path
      sign_in('user')
      job = create(:job)

      visit jobs_path

      expect(page).to have_content("Viewing All Jobs")
      expect(page).to have_content(job.job_name)
    end

    it 'view single job' do
      visit login_path
      sign_in('user')
      job1, job2, job3 = create_list(:job, 3)
      visit jobs_path

      click_on job1.job_name
      expect(current_path).to eq(job_path(job1))
      expect(page).to have_content("Viewing: #{job1.job_name}")
      # expect(page).to have_content(job1.start_date)
      # expect(page).to have_content(job1.end_date)
      # expect(page).to have_content(job1.completed)
      # expect(page).to_not have_content(job2.start_date)
      # expect(page).to_not have_content(job3.start_date)
    end

  end
end
