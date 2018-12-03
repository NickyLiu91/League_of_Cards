class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :role, :rarity,
    :attack, :magic, :defense, :description, :quantity, :key, :image


    has_many :players

    has_many :decks
end
