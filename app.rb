require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end
  
  get '/create_puppy'
    erb :create_puppy
  end
  
  post '/puppy' do 
    @new_puppy = Puppy.new(params[:name], params[:name], params[:name])
    erb :display_puppy
  end
end
