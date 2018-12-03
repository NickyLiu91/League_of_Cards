class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :computer


  has_many :decks
  has_many :cards
end
