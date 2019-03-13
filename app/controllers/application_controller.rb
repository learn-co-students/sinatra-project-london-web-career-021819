class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  get '/' do
    "Hi"
  end

  post '/add_user' do
    # binding.pry
    Visit.find_or_create_by(restaurant_id: params["restaurant"]["id"], user_id: params["user_id"])
    redirect to "/restaurants/#{params["restaurant"]["id"]}"
  end

  get '/restaurants/new' do

    erb :new_restaurant
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @users = User.all
    erb :show_restaurant
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params[:restaurant])
    # binding.pry
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get '/restaurants' do
    @restaurants = Restaurant.all 
    erb :all_restaurants  
  end

  #**************USER CONTROLLER***********************
  get '/users/new' do

    erb :new_user
  end

  get '/users/:id' do
    @user = User.find(params[:id])

    erb :show_user
  end

  post '/users' do
    @user = User.create(params[:user])
    # binding.pry
    redirect to "/users/#{@user.id}"
  end

  get '/users' do
    @users = User.all
    erb :all_users
  end
end
