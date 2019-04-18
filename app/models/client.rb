class Client < ApplicationRecord
  belongs_to :company
  has_many :contact, dependent: :destroy
  has_many :location, dependent: :destroy
  has_many :accounts, dependent: :destroy
  has_many :networks, dependent: :destroy
  has_many :notes, dependent: :destroy

  validates :name, presence: true
end
