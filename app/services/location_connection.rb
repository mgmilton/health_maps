class LocationConnection
  BASE = "https://chronicdata.cdc.gov"

  def conn
    conn = Faraday.new
    res = conn.get do |request|
      request.url BASE
      request.headers['X-App-Token'] = ['SOCRATA_API_KEY']
    end
  end

  def headers
    {
      'X-App-Token': ENV['SOCRATA_API_KEY']
    }
  end

  def get_json
    # response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end
end
