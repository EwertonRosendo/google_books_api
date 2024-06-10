require "net/http"
require "json"

class AuthorsController < ApplicationController
  def show
  end

  def show

    author = params[:author]

    url = "https://www.googleapis.com/books/v1/volumes?q=inauthor:#{author}&startIndex=0&maxResults=1&key=AIzaSyDXXnIr_YKRWAmhO5c0arzwTNj2Dys2h_k"
    uri = URI(url)
    response = JSON.parse(Net::HTTP.get(uri))
    render json: response["items"]
    
  end
end
