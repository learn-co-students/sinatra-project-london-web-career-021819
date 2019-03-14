users = [{name: 'max'}, {name: 'steve'}, {name: 'tom'}]

users.each { |user| User.create(user) }

restaurants = [{name: "McDonald's", rating: 3, address: 'London Bridge'}, {name: 'Pizza Express', rating: 4, address: 'Waterloo'}]

restaurants.each { |restaurant| Restaurant.create(restaurant) }
