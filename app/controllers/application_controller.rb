class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
require 'json'
require 'net/http'
  def index
  end

  def movie_query

  movie = params[:title]

  uri = URI('http://www.myapifilms.com/imdb?title=' + movie)


    response = Net::HTTP.get(uri)

    @body = JSON.parse(response).first
  end

end
