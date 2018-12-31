class Player < ApplicationRecord
  has_many :decks
  has_many :cards
  # has_many :deckcards, through: :collection
end
