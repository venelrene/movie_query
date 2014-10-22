require 'json'
require 'net/http'

class MoviesController < ApplicationController

  def index
    @movie = 'hi'
  end



  def movies
    movie = params[:search]
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
