class Deckcard < ApplicationRecord
  belongs_to :card
  belongs_to :deck
end
