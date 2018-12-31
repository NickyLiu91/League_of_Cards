class Card < ApplicationRecord
  belongs_to :player
  has_many :deckcards
  has_many :decks, through: :deckcards
end
