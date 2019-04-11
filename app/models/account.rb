class Account < ApplicationRecord
  belongs_to :client

  validates :account_type, :username, :password, presence: true
end
