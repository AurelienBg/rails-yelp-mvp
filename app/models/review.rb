class Review < ApplicationRecord
  # validates :rating, numericality: { only_integer: true },
  #   message: "must be a number between 0 and 5" }

  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
  validates :content, presence: true, allow_blank: false
  validates :restaurant, presence: true
  belongs_to :restaurant
end
