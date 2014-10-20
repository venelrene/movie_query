require 'json'
require 'net/http'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end



  def movie_query
    movie = params[:title]
     if movie.present?
      if params[:user_selection] == "title"
        uri = URI('http://www.myapifilms.com/imdb?title=' + movie)
      else
        uri = URI('http://www.myapifilms.com/imdb?name=' + movie)
      end

      response = Net::HTTP.get(uri)
      @body = JSON.parse(response).first
    end
  end
end
