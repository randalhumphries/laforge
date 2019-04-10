class Account < ApplicationRecord
  belongs_to :client

  validates :type, :username, :password, presence: true
end
