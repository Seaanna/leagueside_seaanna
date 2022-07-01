class League < ApplicationRecord
  extend Geocoder::Model::ActiveRecord

  reverse_geocoded_by :latitude, :longitude
  
  validates :name, :latitude, :longitude, :price, presence: true
  validates :latitude , numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end
