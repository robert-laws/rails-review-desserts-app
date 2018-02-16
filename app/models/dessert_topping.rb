class DessertTopping < ApplicationRecord
  belongs_to :dessert
  belongs_to :topping
end
