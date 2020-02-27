class BubbleTea < ApplicationRecord
  validates :tea_type, :sugar_level, presence: true
  validates :sugar_level, numericality: {greater_than_or_equal_to: 0}
  validates :sugar_level, numericality: {less_than_or_equal_to: 1}

  has_many :orders
  has_many :customers, through: :orders
end
