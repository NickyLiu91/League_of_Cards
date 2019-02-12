class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :computer, :image, :password_digest, :gold, :level, :defeated_id, :background, :preduel

  has_many :decks
  has_many :cards
end
