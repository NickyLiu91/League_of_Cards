class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name


  has_many :cards
  belongs_to :player
end
