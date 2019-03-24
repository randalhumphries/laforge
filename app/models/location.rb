class Location < ApplicationRecord
  belongs_to :client

  validates :primary_address, :city, :state, presence: true
end
