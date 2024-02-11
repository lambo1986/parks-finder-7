class ParksController < ApplicationController
  def state
    @facade = ParksFacade.new(params[:state])
    @parks = @facade.parks_by_state
  end
end
