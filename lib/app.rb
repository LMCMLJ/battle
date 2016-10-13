require 'sinatra/base'
require '../lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:p1_name])
    $p2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $p2.hp -= 10
    redirect '/finished-attack'
  end

  get '/finished-attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
