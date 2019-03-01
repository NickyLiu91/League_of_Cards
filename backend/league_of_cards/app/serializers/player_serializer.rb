class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :computer, :image, :password_digest, :gold, :level, :dialogue, :defeated_id, :background, :preduel, :completed

  has_many :decks
  has_many :cards
end
