class AllcardSerializer < ActiveModel::Serializer
  attributes :id, :key, :name, :title, :role, :rarity, :attack, :magic, :defense, :description, :image, :quantity, :cardtype, :effect
end
