class ParksFacade

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def parks_by_state
    service = ParkService.new
    response = service.parks_by_state(@params)
    response.map do |park|
      Park.new(park)
    end
  end
end
