class Product < ApplicationRecord
  has_many :purchased_products
  has_many :purchases, through: :purchased_products
end
