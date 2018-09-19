require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  post '/hit2' do
    $player2.points -= 20
    redirect '/play'
  end

  post '/players_info' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  run! if app_file == $0
end

