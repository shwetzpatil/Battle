require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  
  @player2_points = 100
  

  get '/' do
    session[:player2_points] = 100
    erb(:index)

  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    p session[:player2_points]
    @player2_points = session[:player2_points]
    erb(:play)
  end

  post '/hit2' do
    session
    session[:player2_points] = session[:player2_points] - 20
    redirect '/play'
  end

  post '/players_info' do
    session[:player1] = params[:player1_name]
    session[:player2] = params[:player2_name]
    redirect '/play'
  end

  run! if app_file == $0
end

