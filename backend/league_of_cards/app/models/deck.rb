class Deck < ApplicationRecord
  has_many :deckcards
  has_many :cards, through: :deckcards
  belongs_to :player
end
