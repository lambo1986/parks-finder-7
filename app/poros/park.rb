class Park
  attr_reader :name, :description, :directions, :hours

  def initialize(attributes)
    @name = attributes[:fullName]
    @description = attributes[:description]
    @directions = attributes[:directionsUrl]
    @hours = attributes[:operatingHours].first[:standardHours]
  end
end
