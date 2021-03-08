class GameSerializer < ActiveModel::Serializer
  attributes :id, :category, :questions, :score, :lives_remaining, :user

  #belongs_to :user
  #belongs_to :category
  #has_many :questions, through: :category
end
