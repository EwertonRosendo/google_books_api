require "net/http"
require "json"

class PublishersController < ApplicationController
  def show
    publisher = params[:publisher]

    url = "https://www.googleapis.com/books/v1/volumes?q=inpublisher:#{publisher}&startIndex=0&maxResults=10&key=AIzaSyDXXnIr_YKRWAmhO5c0arzwTNj2Dys2h_k"
    uri = URI(url)
    response = JSON.parse(Net::HTTP.get(uri))
    render json: response["items"]
  end
end
