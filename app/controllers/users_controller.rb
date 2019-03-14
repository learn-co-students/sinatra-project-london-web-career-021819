class UsersController < ApplicationController

  get '/users/new' do
    # directs to the page with the form to make a new user
    erb :'/users/new'
  end

  post '/users' do
    #binding.pry
    @user = User.create(params)

    redirect to '/users/#{@user.id}'
  end

  get '/users' do 
    @users = User.all 

    erb :'/users/index'
  end

  get '/users/:id' do
    @user = User.find(params[:id])

    erb :'/users/show'
  end

end 