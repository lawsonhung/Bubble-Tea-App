class Customer < ApplicationRecord
  validates :name, :quote, presence: true

  has_many :orders
  has_many :bubble_teas, through: :orders
end
