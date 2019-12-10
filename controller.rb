require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry'

require_relative('./models/films')
also_reload('./models/*')

get '/films' do
  @films = Film.all()
  erb(:film)
end
