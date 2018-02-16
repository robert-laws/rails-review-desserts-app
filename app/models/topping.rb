class Topping < ApplicationRecord
  has_many :dessert_toppings
  has_many :desserts, through: :dessert_toppings
end
