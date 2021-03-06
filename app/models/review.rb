class Review < ApplicationRecord
  SCALE = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :restaurant_id, presence: true
  validates :content, presence: true
end
