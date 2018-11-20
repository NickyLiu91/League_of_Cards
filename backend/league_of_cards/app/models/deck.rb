class Deck < ApplicationRecord
  has_many :deckcards
  belongs_to :player
end
