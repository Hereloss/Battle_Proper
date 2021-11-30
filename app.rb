require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  attr_reader :player_1_hitpoints

  enable :sessions

  # our routes would go here
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    session[:player_2_hitpoints] = 100
    session[:player_1_hitpoints] = 100
    @player_2_hitpoints = session[:player_2_hitpoints]
    @player_1_hitpoints = session[:player_1_hitpoints]
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end

