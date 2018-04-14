require 'soda/client'

client = SODA::Client.new({:domain} => 'https://chronicdata.cdc.gov', :app_token => ENV['SOCRATA_API_KEY'])
response = client.get("644b-gaut", {"$limit" => 1, :namelast => "WINFREY", :namefirst => "OPRAH"})
