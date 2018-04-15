class Location < ApplicationRecord
  validates_presence_of :name

  def cdc_api_call
    LocationConnection.new(name).get_json
  end
end
