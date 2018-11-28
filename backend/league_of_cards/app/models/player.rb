class Player < ApplicationRecord
  has_one :collection
  has_many :decks
  has_many :cards, through: :collection
  # has_many :deckcards, through: :collection
end
