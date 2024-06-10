Rails.application.routes.draw do

  
  get "/home", to: 'homepage#index'
  

  get "/titles/:title", to: "titles#show"
  
  get "/publishers/:publisher", to: "publishers#show"
  
  get "/authors/:author", to: "authors#show"
  get "up" => "rails/health#show", as: :rails_health_check

end
