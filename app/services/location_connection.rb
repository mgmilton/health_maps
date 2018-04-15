class LocationConnection
  def initialize(city)
    @city = city
  end

  def conn
    client = SODA::Client.new({:domain => "https://chronicdata.cdc.gov/", :app_token => ENV['SOCRATA_API_KEY']})
    client.get("https://chronicdata.cdc.gov/resource/47z2-4wuh.json?placename=#{city}")
  end

  def get_jsons
    tract_to_jsons.map do |census_json|
      JSON.parse(census_json, symbolize_names: true)
    end
  end

  def tract_to_jsons
    conn.map do |census_hashie|
      census_hashie.to_json
    end
  end

  private
    attr_reader :city
end
