require 'sinatra/base'
require_relative 'models/link.rb'

class Bookmarks < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello Bookmarks!'
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end