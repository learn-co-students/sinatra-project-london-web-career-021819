class RestaurantsController < ApplicationController

    get '/restaurants/new' do
        # directs to the form to enter details
        erb :'/restaurants/new'
    end

    post '/restaurants' do
        binding.pry
        @restaurant = Restaurant.create(params)

        redirect to :'/restaurants/#{@restaurant.id}'
    end

    get '/restaurants' do
        @restaurants = Restaurant.all 

        erb :'/restaurants/index'
    end

end