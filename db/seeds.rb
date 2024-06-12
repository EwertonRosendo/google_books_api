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

puts Author.all.size
puts Book.all.size