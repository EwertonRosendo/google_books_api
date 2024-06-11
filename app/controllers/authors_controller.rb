require "net/http"
require "json"

class AuthorsController < ApplicationController
  def show
  end

  def show

    author = params[:author]

    url = "https://www.googleapis.com/books/v1/volumes?q=inauthor:#{author}&startIndex=0&maxResults=10&key=AIzaSyDXXnIr_YKRWAmhO5c0arzwTNj2Dys2h_k"
    uri = URI(url)
    response = JSON.parse(Net::HTTP.get(uri))
    list_books = []
    response["items"].each_with_index do |item, index|
      
      authors = ""
      
      item["volumeInfo"]["authors"].each do |author|
        authors += author
      end
      thumbnail = item.dig("volumeInfo", "imageLinks", "thumbnail") ? item["volumeInfo"]["imageLinks"]["thumbnail"] : "https://media.baamboozle.com/uploads/images/8842/1650077126_214183.jpeg"


      book = {
        "title": item["volumeInfo"]["title"],
        "subtitle": item["volumeInfo"]["subtitle"],
        "description": item["volumeInfo"]["description"],
        "authors": authors,
        "publishedDate": item["volumeInfo"]["publishedDate"],
        "publisher": item["volumeInfo"]["publisher"],
        "thumbnail": thumbnail,
      }

      list_books.push(book)
    end

    render json: list_books
    
  end
end
