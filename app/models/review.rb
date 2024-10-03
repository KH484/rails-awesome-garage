class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: :true
  validates :rating, numericality: { only_integer: true }, presence: :true
end
