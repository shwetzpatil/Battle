require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  get '/play' do
    $game = Game.new
    erb(:play)
  end

  post '/hit2' do
    $game.attack($player2)
    redirect '/play'
  end

  post '/players_info' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  run! if app_file == $0
end

