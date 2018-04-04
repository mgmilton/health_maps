class Location < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :slug

  before_save :generate_slug

  private
    def generate_slug
      slug = name.parameterize
    end
end
