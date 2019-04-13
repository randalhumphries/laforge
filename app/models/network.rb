class Network < ApplicationRecord
  belongs_to :client

  validates :network_type, :ip_subnet, presence: true
end
