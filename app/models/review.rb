class Review < ApplicationRecord
  # validates :rating, numericality: { only_integer: true },
  #   message: "must be a number between 0 and 5" }

  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than: 6 }
  validates :content, presence: true, allow_blank: false
  validates :restaurant, presence: true
  belongs_to :restaurant
end
