class Client < ApplicationRecord
  belongs_to :company
  has_many :contact, dependent: :destroy

  validates :name, presence: true
end
