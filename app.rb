require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! Let's navigate to the '/new'"
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end


  end
end
