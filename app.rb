require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  DEFAULT_HP = 10
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
  #  @player_1 = params[:player_1]
  #  @player_2 = params[:player_2]
   session[:player_1] = params[:player_1]
   session[:player_2] = params[:player_2]
   redirect '/play'
  end

  get '/play' do 
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_HP = DEFAULT_HP
    @player_2_HP = DEFAULT_HP
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end