require 'rails_helper'

RSpec.describe User do
  context "validations" do
    it { should have_secure_password }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:role) }
    it { should allow_value("email@address.com").for(:email) }
    it { should_not allow_value("Bob").for(:email) }
  end
end
