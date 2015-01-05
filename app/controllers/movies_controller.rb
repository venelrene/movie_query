require 'json'
require 'net/http'

class MoviesController < ApplicationController

  def index
    @movie = 'hi'
  end



  def movies
    cookies.delete(:movie_search)
    cookies.delete(:movie_search_user_selection)
    movie = params[:search]
     if movie.present?
       cookies[:movie_search] = params[:search]
       cookies[:movie_search_user_selection] = params[:user_selection]
      if params[:user_selection] == "title"
        uri = URI('http://www.myapifilms.com/imdb?title=' + URI.escape(movie))
      else
        uri = URI('http://www.myapifilms.com/imdb?name=' + URI.escape(movie))
      end

      response = Net::HTTP.get(uri)
      @body = JSON.parse(response).first
    end
  end
end
