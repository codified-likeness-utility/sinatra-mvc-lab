require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @piggy = pl.piglatinize(params[:user_phrase])
        erb :user_input
    end




end