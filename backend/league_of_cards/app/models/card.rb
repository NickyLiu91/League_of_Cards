class Card < ApplicationRecord
  has_many :collections
  has_many :players, through: :collections
  has_many :deckcards
  has_many :decks, through: :deckcards
end
