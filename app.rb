require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
   player_1 = Player.new(params[:player_1])
   player_2 = Player.new(params[:player_2])
   $game = Game.new(player_1, player_2)
   redirect '/play'
  end

  get '/play' do 
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_HP = $game.player_1.hp
    @player_2_HP = $game.player_2.hp
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack($game.player_2)
    # $player_1.attack($player_2)
    erb(:attack)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end