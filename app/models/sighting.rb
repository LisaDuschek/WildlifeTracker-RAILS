class Sighting < ActiveRecord::Base
  belongs_to :species
  validates_presence_of :name, :date, :latitude, :longitude
end
