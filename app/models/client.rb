class Client < ApplicationRecord
  belongs_to :company
  has_many :contact

  validates :name, presence: true
end
