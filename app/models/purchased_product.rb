class PurchasedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :purchase
  belongs_to :user

  validates :quantity, presence: true, numericality: true
end
