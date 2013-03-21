R20130211StockMovie::Application.routes.draw do

  get '/home' => 'home#home'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'
  get '/movie' => 'movie#movie'
  get '/get_movie' => 'movie#get_movie'
  get '/show_movie' => 'movie#show_movie'
  get '/stock' => 'stock#stock'
  get '/get_stock' => 'stock#get_stock'
  get '/show_stock' => 'stock#show_stock'

  root :to => 'home#home'
end
