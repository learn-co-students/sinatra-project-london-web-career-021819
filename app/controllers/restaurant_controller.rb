class RestaurantController < ApplicationController
  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :'restaurants/index'
  end

  get '/restaurants/new' do
    erb :'restaurants/new'
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @users = User.all
    @addable_users = @users - @restaurant.users
    erb :'restaurants/show'
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params)
    redirect "restaurants/#{@restaurant.id}"
  end

  post '/restaurants/:id/visits' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.users << User.find(params[:user_id])
    redirect "restaurants/#{@restaurant.id}"
  end
end
