require 'rails_helper'

RSpec.describe Harvest do
  context "validations" do
    it { should validate_presence_of(:start_date) }
    it { should allow_value(%w(true false)).for(:completed) }
  end
end
