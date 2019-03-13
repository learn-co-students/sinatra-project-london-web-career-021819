class UserController < ApplicationController

  get '/users' do
    @users = User.all
    erb :'/users/index'
  end

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    @user = User.create(params[:user])
    redirect "/users/#{@user.id}"
  end

  get '/users/:id' do
    @user = User.find_by_id(params[:id])
    erb :'/users/show'
  end
  #
  # get '/users/:id/edit' do
  #
  # end
  #
  # patch 'users/:id' do
  #
  # end
  #
  # delete 'users/:id' do
  #
  # end

end
