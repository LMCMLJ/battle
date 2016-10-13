require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    session[:p1_hp] = 100
    session[:p2_hp] = 100
    @turns = 0
    erb(:play)
    puts "this code runs"
    p session[:p2_hp]
  end

  post '/attack' do
    # session[:p2_hp] -= 10
    redirect '/finished_attack'
  end

  get '/finished_attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
