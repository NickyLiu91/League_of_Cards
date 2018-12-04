class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :computer, :image, :password_digest


  has_many :decks
  has_many :cards
end
