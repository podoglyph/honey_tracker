require 'rails_helper'

RSpec.describe Season do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:year) }
    it { should have_many(:season_locations) }
    it { should have_many(:locations) }
  end
end
