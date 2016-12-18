require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, 'app/views'

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      @pirate.ships << @ship1
      @pirate.ships << @ship2
      erb :show
    end

  end
end

