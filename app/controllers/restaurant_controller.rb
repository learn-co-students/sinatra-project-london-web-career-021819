class RestaurantController < ApplicationController

  get '/' do
    redirect "/restaurants"
  end

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :'/restaurants/index'
  end

  get '/restaurants/new' do
    erb :'/restaurants/new'
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params[:restaurant])
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find_by_id(params[:id])
    erb :'/restaurants/show'
  end

  post '/restaurants/associate' do
    Visit.find_or_create_by(:user_id => params[:user_id], :restaurant_id => params[:restaurant_id])
    redirect to "/restaurants/#{params[:restaurant_id]}"
  end

  # get '/restaurants/:id/edit' do
  #
  # end

  # patch 'restaurants/:id' do
  #
  # end
  #
  # delete 'restaurants/:id' do
  #
  # end

end
