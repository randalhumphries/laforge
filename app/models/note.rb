class Note < ApplicationRecord
  belongs_to :client

  validates :note_text, presence: true
end
