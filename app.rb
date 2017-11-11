require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './models'

enable :sessions

# Database configuration
set :database, "sqlite3:development.sqlite3"

# Define routes below
get '/' do
  erb :index
end

get '/collection' do
  @user = User.find_by_id(session[:user_id])
  @perfumes = Collection.all
  erb :collection
end

get '/perfumes/new' do
  @user = User.find_by_id(session[:user_id])
  erb :'perfumes/new'
end

post '/collection/:id' do
  @user = User.find_by_id(session[:user_id])
  @user.collections.create(perfume_name: params[:perfume_name], perfunme_maker: params[:perfunme_maker])
  redirect '/collection'
end

post '/login' do
  username = params[:username].downcase
  user = User.find_or_create_by(username: username)
  session[:user_id] = user.id
  redirect '/collection'
end
