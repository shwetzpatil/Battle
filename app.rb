require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:players_info)
  end

  post '/players_info' do
    session[:player1] = params[:player1_name]
    session[:player2] = params[:player2_name]
    redirect '/play'
  end

  run! if app_file == $0
end

