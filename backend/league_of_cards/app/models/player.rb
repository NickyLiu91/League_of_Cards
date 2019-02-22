class Player < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: {case_sensitive: false}
  has_many :decks
  has_many :cards
  # has_many :deckcards, through: :collection
end
