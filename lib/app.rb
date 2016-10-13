require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    img = "http://i.imgur.com/dmsJvpc.png"
    img2 = "http://i.imgur.com/yAMeJcI.png"
    $game = Game.new(params[:p1_name], img, params[:p2_name], img2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect '/finished-attack'
  end

  get '/finished-attack' do
    $game.switch_turn
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
