DessertTopping.delete_all
Dessert.delete_all
Topping.delete_all

@dessert_1 = Dessert.create(name: 'Ice Cream Cone', price: 4)
@dessert_2 = Dessert.create(name: 'Cake', price: 15)
@dessert_3 = Dessert.create(name: 'Sundae', price: 8)
@dessert_4 = Dessert.create(name: 'Big Cookie', price: 5)
@dessert_5 = Dessert.create(name: 'Ice Cream Bowl', price: 6)
@dessert_6 = Dessert.create(name: 'Pudding', price: 3)

@topping_1 = Topping.create(name: "Sprinkles")
@topping_2 = Topping.create(name: "Marshmellow")
@topping_3 = Topping.create(name: "Icing")
@topping_4 = Topping.create(name: "Nuts")
@topping_5 = Topping.create(name: "Gingerbread Pieces")
@topping_6 = Topping.create(name: "Hot Fudge")

DessertTopping.create(dessert: @dessert_1, topping: @topping_5)
DessertTopping.create(dessert: @dessert_6, topping: @topping_4)
DessertTopping.create(dessert: @dessert_5, topping: @topping_3)
DessertTopping.create(dessert: @dessert_4, topping: @topping_2)
DessertTopping.create(dessert: @dessert_3, topping: @topping_1)
DessertTopping.create(dessert: @dessert_2, topping: @topping_6)
DessertTopping.create(dessert: @dessert_3, topping: @topping_2)
DessertTopping.create(dessert: @dessert_4, topping: @topping_3)
DessertTopping.create(dessert: @dessert_5, topping: @topping_4)
DessertTopping.create(dessert: @dessert_6, topping: @topping_5)
DessertTopping.create(dessert: @dessert_1, topping: @topping_6)
DessertTopping.create(dessert: @dessert_2, topping: @topping_1)

@location_1 = Location.create(name: 'Boston')
@location_2 = Location.create(name: 'New York')
@location_3 = Location.create(name: 'Philadelphia')
@location_4 = Location.create(name: 'Baltimore')

Store.create(name: "Sweet Store", location: @location_1)
Store.create(name: "Candy Shoppe", location: @location_2)
Store.create(name: "Finely Made Desserts", location: @location_3)
Store.create(name: "Sugar Tooth", location: @location_4)
Store.create(name: "Bob's Candy Store", location: @location_2)