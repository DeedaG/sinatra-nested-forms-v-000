require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      "Welcome to the Nested Forms Lab! Let's navigate to the '/new'"
    end

  end
end
