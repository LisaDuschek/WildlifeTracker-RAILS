class Species < ActiveRecord::Base
  has_many :sightings
  validates_presence_of :name
end
