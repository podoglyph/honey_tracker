# require 'rails_helper'
#
# RSpec.describe 'As logged in user' do
#   include UserLogin
#
#   before(:all) do
#     reset_session!
#   end
#
#   it "is not redirected to the login path" do
#     visit root_path
#
#     sign_in('user')
#     expect(page).to_not have_content('Sign In')
#   end
#
# end
