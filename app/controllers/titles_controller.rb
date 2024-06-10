require "net/http"
require "json"

class TitlesController < ApplicationController
  def show
    
  end

  def show

    title = params[:title]

    url = "https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}&startIndex=0&maxResults=10&key=AIzaSyDXXnIr_YKRWAmhO5c0arzwTNj2Dys2h_k"
    uri = URI(url)
    response = JSON.parse(Net::HTTP.get(uri))
    render json: response["items"]
    
  end

end
