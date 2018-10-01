require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate= Pirate.new(params[:name], params[:height], params[:weight])
      @ships = Ship.new.each do |ship|

        name
        type
        booty
      end
    end

  end
end
