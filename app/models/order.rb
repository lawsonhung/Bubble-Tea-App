class Order < ApplicationRecord
  validates :name, presence: true

  belongs_to :bubble_tea
  belongs_to :customer
end
