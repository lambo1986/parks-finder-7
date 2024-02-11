class ParkService
  BASE_URL = "https://developer.nps.gov/api/v1/"
  API_KEY = ENV["PARK_API_KEY"]

  def all_parks
    get_url("parks?api_key=#{API_KEY}")
  end

  def parks_by_state(state)
    data = get_url("parks?stateCode=mn&api_key=#{API_KEY}")
    data[:data]#.first threw me off. needed the whole array!!
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: BASE_URL)
  end
end
