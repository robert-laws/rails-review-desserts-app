class CreateDessertToppings < ActiveRecord::Migration[5.1]
  def change
    create_table :dessert_toppings do |t|
      t.belongs_to :dessert, foreign_key: true
      t.belongs_to :topping, foreign_key: true

      t.timestamps
    end
  end
end
