class User < ApplicationRecord
  belongs_to :company
  accepts_nested_attributes_for :company
  validates :first_name, :last_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def full_name
    first_name + ' ' + last_name
  end
end
