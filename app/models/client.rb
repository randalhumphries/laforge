class Client < ApplicationRecord
  belongs_to :company
  has_many :contact, dependent: :destroy
  has_many :location, dependent: :destroy

  validates :name, presence: true
end
