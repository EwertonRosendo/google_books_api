# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#author1 = author1.create(name: "ewerton rosendo", biography:"um cara desconhecido")
#author2 = author1.new(name: "davi vieira", biography:"muito famoso")
#author1 = author1.find_by(name: "ewerton rosendo")
#puts author1["name"]
#puts author1[]
#book1 = author1.books.create(title:"aprendendo ruby", description: "o metodo mais facil para aprender ruby é ..", published_at: Time.now, author1:"ewerton rosendo")
#book2 = author1.books.create(title:"aprendendo go lang", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, author1:"ewerton rosendo")
#book3 = author1.books.create(title:"aprendendo ruby", description: "o metodo mais facil para aprender ruby é ..", published_at: Time.now, author1:"ewerton rosendo")
#book4 = author1.books.create(title:"aprendendo go lang", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, author1:"ewerton rosendo")

Book.destroy_all
Author.delete_all


authorc1 = Author.create!(name: "Ewerton Rosendo", biography: "sudo apt install node yarn ruby rails gem")
authorc2 = Author.create!(name: "Davi Vieira", biography: "sudo windows ufrpe saudades ete na verdade nao")

author1 = Author.find_by(name: "Ewerton Rosendo")
author2 = Author.find_by(name: "Davi Vieira")

book = Book.create!(title: "aprendendo go lang", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author1)
book = Book.create!(title: "ruby do jeito mais dificil", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author1)
book = Book.create!(title: "aprendendo cmo fazer cafe", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author1)
book = Book.create!(title: "aaorebde a ficar maluco", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author1)

book = Book.create!(title: "aprendendo cmo fazer cafe", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author2)
book = Book.create!(title: "aaorebde a ficar maluco", description: "o metodo mais facil para aprender go lang é ..", published_at: Time.now, publisher: "Saraiva", author: author2)


#puts "author1: "+author1["name"]
puts Author.all.size
puts Book.all.size