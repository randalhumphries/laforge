class Contact < ApplicationRecord
  belongs_to :client
  
  validates :first_name, :last_name, :email, :primary_phone, presence: true
end
