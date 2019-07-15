require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = ['http://www.makersacademy.com', 'http://www.destroyallsoftware.com', 'http://www.google.com']
    erb :bookmarks
  end

  post '/bookmarked' do
    @current_bookmark = params[:entered_bookmark]
    erb :bookmark_directory
  end



  run! if app_file == $0
end
