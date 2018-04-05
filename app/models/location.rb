class Location < ApplicationRecord
  validates_presence_of :name
  before_save :generate_slug

  def generate_slug
    slug = name.parameterize
  end
end
