class Dessert < ApplicationRecord
  has_many :dessert_toppings, dependent: :destroy
  has_many :toppings, through: :dessert_toppings

  validates :name, presence: true
  validates :price, presence: true

  accepts_nested_attributes_for :toppings

  def toppings_attributes=(topping_attributes)
    topping_attributes.values.each do |topping_attribute|
      if !topping_attribute['name'].blank?
        topping = Topping.find_or_create_by(topping_attribute)
        self.toppings << topping
      end
    end
  end
end
