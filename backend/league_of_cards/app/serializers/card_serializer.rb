class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :role, :rarity,
    :attack, :magic, :defense, :description, :quantity, :key, :image


    belongs_to :player

    has_many :decks
end
