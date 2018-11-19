class Product < ApplicationRecord
  belongs_to :user
  has_many :carts
  has_many :users_cart, through: :carts, source: :cart
end
