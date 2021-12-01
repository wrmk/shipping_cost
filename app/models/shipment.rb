class Shipment < ApplicationRecord
  validates :length, numericality: true
  validates :width, numericality: true
  validates :height, numericality: true
  validates :volume, numericality: true
  validates :price, numericality: true
  validates :distance, numericality: true
  validates :departure, presence: true
  validates :destination, presence: true

  scope :top_departures, -> {pluck(:departure).tally.sort_by{|city| -city[1]}}
end
