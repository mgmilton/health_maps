class LocationConnection
  def initialize(city)
    @city = city
  end

  def conn
    client = SODA::Client.new({:domain => "https://chronicdata.cdc.gov/", :app_token => ENV['SOCRATA_API_KEY']})
    client.get("https://chronicdata.cdc.gov/resource/nrg8-bad6.json?placename=#{city}")
  end

  def get_json
    response = conn.to_json
    JSON.parse(response, symbolize_names: true)
  end

  private
    attr_reader :city
end
