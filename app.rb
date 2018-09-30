require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      "Welcome to the Nested Forms Lab!  let's navigate to the '/new'"
      erb :index
    end

    get '/pirates/new' do
      erb :pirates/new
    end

    get '/pirates/:id' do
      @pirate = Pirate.get(params[:id])

      erb :'pirates/show'
    end


    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end

      redirect to "/pirates/#{pirate.id}"
      #please go to localhost:9393/pirates/this pirates id
    end
  end
end
