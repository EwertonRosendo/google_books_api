namespace :dev do
  desc "== db:seed"
  task setup: :environment do
    #%x(rails db:drop rb:create db:migrate db:seed)
  end

end
