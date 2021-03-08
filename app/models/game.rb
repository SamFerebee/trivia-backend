class Game < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :questions, through: :category
end
