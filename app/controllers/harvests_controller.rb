class HarvestsController < ApplicationController

  def index
    @harvests = Harvest.all
  end

  def show
    @harvest = Harvest.find(params[:id])
  end

end
