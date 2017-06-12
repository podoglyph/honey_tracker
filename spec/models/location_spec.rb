require 'rails_helper'

RSpec.describe Location do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lat) }
    it { should validate_presence_of(:long) }
  end
end
