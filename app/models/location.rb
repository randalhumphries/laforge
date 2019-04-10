class Location < ApplicationRecord
  belongs_to :client

  validates :name, :primary_address, :city, :state, presence: true
end
