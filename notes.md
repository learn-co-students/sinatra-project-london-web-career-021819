1. User can create a new user:
get /user/new
  erb :newuser
end

post /users
  erb :users
end

2. User can create a new restaurant

get /restaurant/new
  erb :newrestaurant
end

post /restaurant
  erb :restaurants
end

3. User can see all users:

get /user
  erb :users
end

4. User can see all restaurants:

get /restaurant
  erb :restaurants
end

5. See individual restaurant:

get /restaurant/id
  erb :
end

6. See individual user:
get /user/id
  erb :
end
