class Contact < ApplicationRecord
  belongs_to :client
  
  validates :first_name, :last_name, :email, :primary_phone, presence: true

  def full_name
    first_name + ' ' + last_name
  end
end
