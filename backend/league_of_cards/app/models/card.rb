class Card < ApplicationRecord
  has_many :collections
  has_many :deckcards
end
