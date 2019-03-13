user1 = User.create(name: "Fez")
user2 = User.create(name: "Kai")
user3 = User.create(name: "Bob")

rest1 = Restaurant.create(name: "KFC", address: "1 Road", rating: 5)
rest2 = Restaurant.create(name: "Burget King", address: "2 Street", rating: 3)
rest3 = Restaurant.create(name: "McDonalds", address: "3 Avenue", rating: 2)

visit1 = Visit.create(user_id: user1.id, restaurant_id: rest1.id)
visit2 = Visit.create(user_id: user1.id, restaurant_id: rest2.id)
visit3 = Visit.create(user_id: user2.id, restaurant_id: rest3.id)
visit4 = Visit.create(user_id: user2.id, restaurant_id: rest1.id)
visit5 = Visit.create(user_id: user3.id, restaurant_id: rest2.id)
visit6 = Visit.create(user_id: user3.id, restaurant_id: rest1.id)
