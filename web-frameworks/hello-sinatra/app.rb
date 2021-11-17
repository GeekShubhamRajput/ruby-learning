require 'sinatra'

class HelloSinatra < Sinatra::Base

  get '/' do
    "Hey Sinatra"
  end

  get '/test' do
    "What's your name?"
  end

  get '/:name' do
    "My name is #{params[:name]}"
  end
end
