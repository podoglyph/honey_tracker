require 'rails_helper'
require 'pry'

RSpec.describe Season do

  context "On the Season index view" do

      it "displays the status" do
        season1 = create(:season)
        loc = create(:location)
        sl = season1.season_locations.create(location_id: loc.id, num_hives: 48, num_supers: 145, num_dead: 0)
        binding.pry
      end

      xit "displays the completed locations" do

      end

      xit "displays the completed jobs" do

      end

      xit "display the average pull rating" do

      end

  end

end
